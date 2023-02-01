package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/*
------------- -------- ------ 
NO            NOT NULL NUMBER 
BOARD_NO      NOT NULL NUMBER 
ITEM_CATEGORY NOT NULL NUMBER 
ADDRESS_NO    NOT NULL NUMBER 
BUYER_NO               NUMBER 
STATUS_NO     NOT NULL NUMBER 
PRICE         NOT NULL NUMBER
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TradeVO {

	/**
	 * Trade 테이블 기본 속성
	 */
	private int no;
	private int boardNo;
	private int itemCategory;
	private int addressNo;
	private int buyerNo;
	private int statusNo;
	private int price;

	private List<AddressVO> addressVOList;
	private List<ItemCategoryVO> itemCategoryVOList;
	private List<BoardVO> boardVOList;
	private List<MemberVO> memberVOList;
	private List<TestImageVO> imageVOList;   // Test imageList
}
