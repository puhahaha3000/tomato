package com.example.tomato.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.example.tomato.vo.MemberVO;

@Mapper
public interface MemberMapper{

	MemberVO getMember(String name);
   
   @Insert("insert into members(no,id,address_no,password,name,tel,email,nickname,del_flag) values(#{no},#{id},#{addressNo},#{password},#{name},#{tel},#{email},#{nickname},#{delFlag})")
   public int insertMember(MemberVO memberVO);

   @Insert("insert into authorities(member_no,AUTHORITY) values(#{memberNo},'ROLE_USER')")
   public void insertAuthorities(MemberVO memberVO);
   
}