package com.example.tomato.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
---------- -------- ------------- 
NO         NOT NULL NUMBER        
ID         NOT NULL VARCHAR2(60)  
ADDRESS_NO NOT NULL NUMBER        
PASSWORD   NOT NULL VARCHAR2(60)  
NAME       NOT NULL VARCHAR2(60)  
TEL        NOT NULL VARCHAR2(20)  
EMAIL      NOT NULL VARCHAR2(100) 
NICKNAME   NOT NULL VARCHAR2(60)  
DEL_FLAG   NOT NULL CHAR(1)
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MemberVO {
	private int no;
	private String id;
	private int addressNo;
	private String password;
	private String name;
	private String tel;
	private String email;
	private String nickname;
	private char delFlag;
	
	private List<AuthorityVO> authorityList;
}
