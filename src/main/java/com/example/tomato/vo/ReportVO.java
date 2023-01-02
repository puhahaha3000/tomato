package com.example.tomato.vo;

import java.sql.Timestamp;

import lombok.Data;

/*
------------- -------- -------------- 
NO            NOT NULL NUMBER         
MEMBER_NO     NOT NULL NUMBER         
TRADE_NO      NOT NULL NUMBER         
CATEGORY_NO   NOT NULL NUMBER         
CONTENT                VARCHAR2(1000) 
CREATE_DATE   NOT NULL DATE           
COMPLETE_FLAG NOT NULL CHAR(1)     
 */

@Data
public class ReportVO {
	private int no;
	private int memberNo;
	private int tradeNo;
	private int categoryNo;
	private String content;
	private Timestamp createDate;
	private char completeFlag;
}
