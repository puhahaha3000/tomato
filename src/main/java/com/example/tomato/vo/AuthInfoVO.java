package com.example.tomato.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
----------- -------- ------------- 
MEMBER_NO   NOT NULL NUMBER(10)    
NO          NOT NULL VARCHAR2(200) 
CREATE_DATE NOT NULL DATE
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class AuthInfoVO {
	private int memberNo;
	private String no;
	private Timestamp createDate;
}
