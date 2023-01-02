package com.example.tomato.vo;

import lombok.Data;

/*
--------- -------- -------------- 
NO        NOT NULL NUMBER         
TRADE_NO  NOT NULL NUMBER         
THUMBNAIL NOT NULL VARCHAR2(1000) 
PHOTO     NOT NULL VARCHAR2(1000) 
ORDERS    NOT NULL NUMBER 
 */

@Data
public class ImageVO {
	private int no;
	private int tradeNo;
	private String thumbnail;
	private String photo;
	private int orders;
}
