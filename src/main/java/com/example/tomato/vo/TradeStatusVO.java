package com.example.tomato.vo;

import lombok.Data;

/*
---- -------- ------------ 
NO   NOT NULL NUMBER       
NAME NOT NULL VARCHAR2(30)
 */

@Data
public class TradeStatusVO {
	private int no;
	private String name;
}
