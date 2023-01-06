package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
--------- -------- -------------- 
NO        NOT NULL NUMBER         
TRADE_NO  NOT NULL NUMBER         
THUMBNAIL NOT NULL VARCHAR2(1000) 
PHOTO     NOT NULL VARCHAR2(1000) 
ORDERS    NOT NULL NUMBER 
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ImageVO {
	private int no;
	private int tradeNo;
	private String thumbnail;
	private String photo;
	private int orders;
}
