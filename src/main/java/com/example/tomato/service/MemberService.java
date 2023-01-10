package com.example.tomato.service;

import com.example.tomato.vo.MemberVO;

public interface MemberService {

    void join(MemberVO memberVO);   // 회원가입 서비스
    int id_confirm(String userid);   // 아이디 중복 확인 서비스
    int nickname_confirm(String userNickname);   // 닉네임 중복 확인 서비스
}
