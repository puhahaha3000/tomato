package com.example.tomato.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/*
------------- -------- ------- 
NO            NOT NULL NUMBER  
BOARD_NO      NOT NULL NUMBER  
HIDDEN_FLAG   NOT NULL CHAR(1) 
COMPLETE_FLAG NOT NULL CHAR(1)        
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
public class QnaVO {
	private int no;
	private int boardNo;
	private char hiddenFlag;
	private char completeFlag;

	private List<BoardVO> boardVOList;
}
