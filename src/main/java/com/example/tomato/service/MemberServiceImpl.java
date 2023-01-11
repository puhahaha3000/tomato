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

    @Override
    public int id_confirm(String userid) {

        log.info("id_check() ..");

        int idCheckNum = memberMapper.idCheck(userid);

        log.info("DB val : " + idCheckNum);


        return idCheckNum;
    }

    @Override
    public int nickname_confirm(String userNickname) {

        log.info("nickname_check() ..");

        int nicknameCheckNum = memberMapper.nicknameCheck(userNickname);

        log.info("DB val : " + nicknameCheckNum);

        return nicknameCheckNum;
    }
}
