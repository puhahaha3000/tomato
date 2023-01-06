package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
---- -------- ------------- 
NO   NOT NULL NUMBER        
NAME NOT NULL VARCHAR2(100)
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ItemCategoryVO {
	private int no;
	private String name;
}
