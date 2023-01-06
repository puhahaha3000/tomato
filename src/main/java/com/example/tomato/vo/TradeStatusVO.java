package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
---- -------- ------------ 
NO   NOT NULL NUMBER       
NAME NOT NULL VARCHAR2(30)
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TradeStatusVO {
	private int no;
	private String name;
}
