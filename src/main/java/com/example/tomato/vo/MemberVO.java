package com.example.tomato.vo;

import lombok.Data;

/*
-------- -------- ------------- 
NO       NOT NULL NUMBER        
ID       NOT NULL VARCHAR2(60)  
CODE     NOT NULL VARCHAR2(12)  
DONG_ID  NOT NULL VARCHAR2(2)   
PASSWORD NOT NULL VARCHAR2(60)  
NAME     NOT NULL VARCHAR2(60)  
TEL      NOT NULL VARCHAR2(20)  
EMAIL    NOT NULL VARCHAR2(100) 
NICKNAME NOT NULL VARCHAR2(60)  
DEL_FLAG NOT NULL CHAR(1)   
 */

@Data
public class MemberVO {
	private int no;
	private String id;
	private String code;
	private String dongId;
	private String password;
	private String name;
	private String tel;
	private String email;
	private String nickname;
	private char delFlag;
}
