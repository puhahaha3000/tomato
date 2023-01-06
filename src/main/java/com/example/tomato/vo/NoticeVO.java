package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
-------- -------- ------ 
NO       NOT NULL NUMBER 
BOARD_NO NOT NULL NUMBER
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class NoticeVO {
	private int no;
	private int boardNo;
}
