package com.example.tomato.service;

import com.example.tomato.vo.MemberVO;

public interface MemberService {

    void join(MemberVO memberVO);   // 회원가입 서비스
    int id_confirm(String userid);   // 아이디 중복 확인 서비스
    int nickname_confirm(String userNickname);   // 닉네임 중복 확인 서비스
    MemberVO mypage(String memberId);   // 마이페이지에 띠울 내 정보 가져오는 서비스

    int getNo(String id);
    
    MemberVO findId(String email, String name);	//email과 이름을 통하여 member id조회
	int sendMail(String email, String title, String content);		//email을 통하여 title과 content발송
}
