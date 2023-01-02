package com.example.tomato.vo;

import lombok.Data;

/*
---- -------- ------------- 
NO   NOT NULL NUMBER        
NAME NOT NULL VARCHAR2(100)
 */

@Data
public class ItemCategoryVO {
	private int no;
	private String name;
}
