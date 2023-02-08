package com.example.tomato.service;

import java.util.Random;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.tomato.vo.AuthInfoVO;
import com.example.tomato.vo.MemberVO;

@SpringBootTest
class MemberServiceTest {

	@Autowired
	private MemberService memberService;
	
	@Disabled
	@Test
	void testFindId() {
		String email_true = "shlee807@naver.com";
		String email_false = "shlee807@gmail.com";
		String name_true = "John";
		String name_false = "John2";
		
		try {
			MemberVO member_true = memberService.findId(email_true, name_true);
	
			System.out.println(member_true);
			
		} catch (Exception e) {
			System.out.println("이메일로 가입하신 적이 존재하지 않거나, 이름과 이메일이 일치하지 않습니다");
		}
		
		try {
			MemberVO member_mismatch = memberService.findId(email_true, name_false);
			
			System.out.println(member_mismatch);

		} catch (Exception e) {
			System.out.println("이메일로 가입하신 적이 존재하지 않거나, 이름과 이메일이 일치하지 않습니다");
		}
		
		try {
			MemberVO member_false = memberService.findId(email_false, name_false);

			System.out.println(member_false);
		} catch (Exception e) {
			System.out.println("이메일로 가입하신 적이 존재하지 않거나, 이름과 이메일이 일치하지 않습니다");
		}
		//success
	}
	
	@Disabled
	@Test
	void testSendMail() {
		String email = "shlee807@naver.com";
		String name = "John";
		MemberVO member = memberService.findId(email, name);
		
		String title = "회원님의 ID입니다";
		String content = "ID: " + member.getId();
		
		boolean sendResult = memberService.sendMail(email, title, content);
		System.out.println(sendResult+content);
	}
	
	@Disabled
	@Test
	void testFindNoByEmail() {
		String email = "shlee807@naver.com";
		int result = memberService.findNoByEmail(email);
		System.out.println("회원번호: "+result);
	}
	
	@Disabled
	@Test
	void testSetAuthInfo() {
		AuthInfoVO authInfoVO = new AuthInfoVO();
		authInfoVO.setMemberNo(44);
		
		Random randNum = new Random();
		int num = randNum.nextInt(999999); //6자리 난수
		String no = Integer.toString(num);
		
		authInfoVO.setNo(no);
		memberService.setAuthInfo(authInfoVO);
	}
	@Disabled
	@Test
	void testInitPassword() {
		System.out.println(memberService.initPassword(44, "john2"));
	}
	
	@Test
	void testWithdrawal() {
		System.out.println(memberService.withdrawal("john2"));
	}
}
