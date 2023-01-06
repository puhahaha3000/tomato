package com.example.tomato.vo;

import java.sql.Timestamp;

import lombok.Data;

/*
------------- -------- -------------- 
NO            NOT NULL NUMBER         
MEMBER_NO     NOT NULL NUMBER         
TITLE         NOT NULL VARCHAR2(300)  
CONTENT       NOT NULL VARCHAR2(3000) 
CREATE_DATE   NOT NULL DATE           
MODIFIED_DATE NOT NULL DATE           
HIT           NOT NULL NUMBER         
DEL_FLAG      NOT NULL CHAR(1)
 */

@Data
public class BoardVO {
	private int no;
	private int memberNo;
	private String title;
	private String content;
	private Timestamp createDate;
	private Timestamp modified_date;
	private int hit;
	private char delFlag;
}
