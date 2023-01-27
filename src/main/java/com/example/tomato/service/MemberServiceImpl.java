package com.example.tomato.service;

import com.example.tomato.mapper.MemberMapper;
import com.example.tomato.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@Transactional
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

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


}
