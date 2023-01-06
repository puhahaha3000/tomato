package com.example.tomato.vo;

import lombok.Data;

/*
---- -------- ------------- 
NO   NOT NULL NUMBER        
NAME NOT NULL VARCHAR2(500)
 */

@Data
public class ReportCategoryVO {
	private int no;
	private String name;
}
