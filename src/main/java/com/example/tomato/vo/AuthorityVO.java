package com.example.tomato.vo;

import lombok.Data;

/*
--------- -------- ------------ 
MEMBER_NO NOT NULL NUMBER       
AUTHORITY NOT NULL VARCHAR2(50)
 */

@Data
public class AuthorityVO {
	private String memberNo;
	private String authority;
}
