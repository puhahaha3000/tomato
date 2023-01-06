package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
-------- -------- ------ 
OWNER_NO NOT NULL NUMBER 
TRADE_NO NOT NULL NUMBER
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class FavoriteVO {
	private int ownerNo;
	private int tradeNo;
}
