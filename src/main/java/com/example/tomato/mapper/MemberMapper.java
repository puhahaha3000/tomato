package com.example.tomato.mapper;

import com.example.tomato.vo.MemberVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper{

	MemberVO getMember(String name);
   
    // @Insert("insert into members(no,id,address_no,password,name,tel,email,nickname,del_flag) values(#{no},#{id},#{addressNo},#{password},#{name},#{tel},#{email},#{nickname},#{delFlag})")
    // public int insertMember(MemberVO memberVO);

   @Insert("insert into authorities(member_no,AUTHORITY) values(#{memberNo},'ROLE_USER')")
    void insertAuthorities(MemberVO memberVO);

    void insertMember(MemberVO memberVO);   // 입력한 회원 데이터를 데이터베이스에 추가
    int idCheck(String userid);   // 입력한 아이디 데이터베이스 통신을 통해 중복(카운트로 아이디 갯수 출력) 확인
    int nicknameCheck(String userNickname);    // 입력한 닉네임 데이터베이스 통신을 통해 중복(카운트로 닉네임 갯수 출력) 확인
   
}