package com.example.tomato.vo;

import java.sql.Timestamp;

import lombok.Data;

/*
------------- -------- ------------ 
NO            NOT NULL NUMBER       
BOARD_NO      NOT NULL NUMBER       
ITEM_CATEGORY NOT NULL NUMBER       
CODE          NOT NULL VARCHAR2(12) 
DONG_ID       NOT NULL VARCHAR2(2)  
BUYER_NO               NUMBER       
STATUS_NO     NOT NULL NUMBER       
PRICE         NOT NULL NUMBER
 */

@Data
public class TradeVO {
	private int no;
	private int boardNo;
	private int itemCategoryNo;
	private String code;
	private String dongId;
	private int buyerNo;
	private int statusNo;
	private int price;
}
