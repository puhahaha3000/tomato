package com.example.tomato.service;

import com.example.tomato.vo.AuthInfoVO;

public interface AuthService {
	
	boolean setAuthInfo(AuthInfoVO authInfoVO);	//authInfo에 회원번호, 인증번호, 발송시간 저장
	boolean sendMail(String email, String title, String content);	//email을 통하여 title과 content발송
}
