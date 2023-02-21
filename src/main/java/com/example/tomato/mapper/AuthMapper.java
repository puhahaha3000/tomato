package com.example.tomato.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.example.tomato.vo.AuthInfoVO;

@Mapper
public interface AuthMapper {

	@Insert("INSERT INTO AUTH_INFO(MEMBER_NO, NO) VALUES(#{memberNo}, #{no})")
	void insertAuthInfo(AuthInfoVO authInfoVO);

}