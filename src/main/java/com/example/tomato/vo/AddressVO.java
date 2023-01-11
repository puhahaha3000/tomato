package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
------------ -------- ------------ 
NO           NOT NULL NUMBER       
SIDO_NAME             VARCHAR2(60) 
SIGUNGU_NAME          VARCHAR2(60) 
DONG_NAME             VARCHAR2(60)
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class AddressVO {
	private int no;
	private String sidoName;
	private String sigunguName;
	private String dongName;
}
