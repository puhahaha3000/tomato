package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
---- -------- ------------- 
NO   NOT NULL NUMBER        
NAME NOT NULL VARCHAR2(500)
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReportCategoryVO {
	private int no;
	private String name;
}
