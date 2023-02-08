package com.example.tomato;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.tomato.mapper.MemberMapper;
import com.example.tomato.vo.AuthorityVO;
import com.example.tomato.vo.MemberVO;


@SpringBootTest
class MemberMapperTest {

	@Autowired
	private MemberMapper memberMapper;

	
	// 암호화 했을 때 member insert
	@Disabled
	@Test
	void testInsertMember2() {
		List<AuthorityVO> authorityList = new ArrayList<AuthorityVO>();
		

		MemberVO member = new MemberVO();
		member.setNo(1);
		
		AuthorityVO authority1 = new AuthorityVO();
		authority1.setAuthority("ADMIN");
		authority1.setMemberNo(1);
		
		authorityList.add(authority1);
		
		member.setAddressNo(1);
		member.setAuthorityList(authorityList);
		member.setId("john2");
		member.setPassword(new BCryptPasswordEncoder().encode("john2"));
		member.setDelFlag('n');
		member.setEmail("shlee807@naver.com");
		member.setName("John");
		member.setNickname("john");
		member.setTel("010-0110-1001");

		memberMapper.insertMember(member);
		memberMapper.insertAuthorities();
	}

	// 암호화 확인
	@Test
	void testCheckJohn2() {

		MemberVO member = memberMapper.getMember("john2");
		System.out.println(member);
		
		boolean isPass = new BCryptPasswordEncoder().matches("john2",member.getPassword());
		System.out.println(isPass);
	}
	
}
