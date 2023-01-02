package com.example.tomato.vo;

import lombok.Data;

/*
-------- -------- ------ 
OWNER_NO NOT NULL NUMBER 
TRADE_NO NOT NULL NUMBER
 */

@Data
public class FavoriteVO {
	private int ownerNo;
	private int tradeNo;
}
