package com.example.tomato.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.extern.slf4j.Slf4j;

public class MemberDetailsVO implements UserDetails {

	private String id;
	private String password;
	private char delFlag;
	private List<GrantedAuthority> authorities;

	public MemberDetailsVO(MemberVO member) {
		this.setAuthorities(member);
		this.setId(member.getId());
		this.setPassword(member.getPassword());
		this.setDelFlag(member.getDelFlag());
	}

	private void setAuthorities(MemberVO memberVO) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (AuthorityVO auth : memberVO.getAuthorityList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
		}
		this.authorities = authorities;
	}

	private void setId(String id) {
		this.id = id;
	}

	private void setPassword(String password) {
		this.password = password;
	}

	private void setDelFlag(char delFlag) {
		this.delFlag = delFlag;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return id;
	}

	// 계정이 만료 되지 않았는가?
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	// 계정이 잠기지 않았는가?
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	// 패스워드가 만료되지 않았는가?
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	// 계정이 활성화 되었는가?
	@Override
	public boolean isEnabled() {
		if (delFlag == 'N')
			return true;
		else
			return false;
	}

}