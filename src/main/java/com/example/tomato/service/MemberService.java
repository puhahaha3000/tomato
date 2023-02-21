package com.example.tomato.service;

import com.example.tomato.vo.MemberVO;

public interface MemberService {

    void join(MemberVO memberVO);   // 회원가입 서비스
    int id_confirm(String userid);   // 아이디 중복 확인 서비스
    int nickname_confirm(String userNickname);   // 닉네임 중복 확인 서비스
    MemberVO mypage(String memberId);   // 마이페이지에 띠울 내 정보 가져오는 서비스
    int getNo(String id);
    
    MemberVO findId(String email, String name);		//email과 이름을 통하여 member id조회
	int findNoByEmail(String email);	//email을 통하여 member no조회 (단, email입력오류발생시 -1을 반환)
	boolean initPassword(int memberNo, String password);	//회원번호와 (새로운)비밀번호를 입력받아서 해당 회원의 비밀번호를 초기화
	boolean withdrawal(String id);	//해당id의 회원탈퇴기능
}
