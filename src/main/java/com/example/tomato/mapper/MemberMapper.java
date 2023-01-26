package com.example.tomato.mapper;

import com.example.tomato.vo.MemberVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MemberMapper{

	MemberVO getMember(String name);

    @Insert("insert into authorities(member_no) values(member_no_seq.currval)")
    void insertAuthorities();

    void insertMember(MemberVO memberVO);   // 입력한 회원 데이터를 데이터베이스에 추가
    int idCheck(String userid);   // 입력한 아이디 데이터베이스 통신을 통해 중복(카운트로 아이디 갯수 출력) 확인
    int nicknameCheck(String userNickname);    // 입력한 닉네임 데이터베이스 통신을 통해 중복(카운트로 닉네임 갯수 출력) 확인
    MemberVO getMemberVO(String memberId);   // 세션값에 있는 멤버아이디로 닉네임을 가져온다.

    @Select("SELECT NO FROM MEMBERS WHERE ID = #{id}")
    int getNo(String id);

    MemberVO getMemberByEmailAndName(String email, String name);    //email과 이름을 통하여 member id조회

}