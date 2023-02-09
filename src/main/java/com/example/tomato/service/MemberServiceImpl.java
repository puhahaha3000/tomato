package com.example.tomato.service;

import com.example.tomato.mapper.MemberMapper;
import com.example.tomato.mapper.TradeMapper;
import com.example.tomato.vo.MemberVO;
import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.TradeVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.List;

@Slf4j
@Service
@Transactional
public class MemberServiceImpl implements MemberService {

    private final MemberMapper memberMapper;
    private final TradeMapper tradeMapper;
    private final JavaMailSender javaMailSender;

    public MemberServiceImpl(MemberMapper memberMapper, TradeMapper tradeMapper, JavaMailSender javaMailSender) {
        this.memberMapper = memberMapper;
        this.tradeMapper = tradeMapper;
        this.javaMailSender = javaMailSender;
    }

    // 유저 회원가입
    @Override
    public void join(MemberVO memberVO) {

        log.info("join() ..");

        memberVO.setPassword(new BCryptPasswordEncoder().encode(memberVO.getPassword()));

        memberMapper.insertMember(memberVO);
        memberMapper.insertAuthorities();
    }

    // 아이디 중복 체크
    @Override
    public int id_confirm(String userid) {

        log.info("id_check() ..");

        int idCheckNum = memberMapper.idCheck(userid);

        log.info("DB val : " + idCheckNum);


        return idCheckNum;
    }

    // 닉네임 중복 체크
    @Override
    public int nickname_confirm(String userNickname) {

        log.info("nickname_check() ..");

        int nicknameCheckNum = memberMapper.nicknameCheck(userNickname);

        log.info("DB val : " + nicknameCheckNum);

        return nicknameCheckNum;
    }

    // 마이페이지의 내 정보 가져오기
    @Override
    public MemberVO mypage(String memberId) {

        log.info("mypage() ..");

        MemberVO memberVO = memberMapper.getMemberVO(memberId);

        log.info("User Information : " + memberVO.toString());

        return memberVO;
    }

    @Override
    public int getNo(String id) {

        return memberMapper.getNo(id);
    }

    // email과 이름을 통하여 member id조회
    @Override
    public MemberVO findId(String email, String name) {
        log.info("searchId() ..");
        MemberVO memberVO = memberMapper.getMemberByEmailAndName(email, name);
        return memberVO;
    }

    @Override
    public int sendMail(String email, String title, String content) {
        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "utf-8");
            helper.setTo(email);    //수신자 email 주소
            helper.setSubject(title);    //발신 제목
            helper.setText(content);
            javaMailSender.send(mimeMessage);
            return 0;
        } catch (MessagingException e) {
            e.printStackTrace();
            return 1;
        }
    }

    @Override
    public boolean favorite(int userNo, int tradeNo) {

        log.info("addFavorite() ..");

        return memberMapper.addFavorite(userNo, tradeNo) == 1;
    }

    @Override
    public List<TradeVO> myFavorite(int userNo, PagingVO pagingVO) {

        log.info("getMyFavorite() ..");

        return tradeMapper.getMyFavorite(userNo, pagingVO);
    }

    @Override
    public List<TradeVO> myArticle(int userNo, PagingVO pagingVO) {

        log.info("getMyArticle() ..");

        return tradeMapper.getMyArticle(userNo, pagingVO);
    }

}
