package com.example.tomato.vo;

import java.sql.Timestamp;

import lombok.Data;

/*
----------- -------- -------------- 
NO          NOT NULL NUMBER         
TRADE_NO    NOT NULL NUMBER         
MEMBER_NO   NOT NULL NUMBER         
MEMBER_NO2  NOT NULL NUMBER         
CREATE_DATE NOT NULL DATE           
OPEN_FLAG   NOT NULL CHAR(1)        
FILE_URL    NOT NULL VARCHAR2(1000)  
 */

@Data
public class ChatRoomVO {
	private int no;
	private int tradeNo;
	private String memberNo;
	private String memberNo2;
	private Timestamp createDate;
	private char openFlag;
	private String fileUrl;
}
