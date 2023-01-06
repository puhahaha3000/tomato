package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
--------- -------- ------------ 
MEMBER_NO NOT NULL NUMBER       
AUTHORITY NOT NULL VARCHAR2(50)
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class AuthorityVO {
	private int memberNo;
	private String authority;
}
