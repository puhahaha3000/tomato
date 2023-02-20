package com.example.tomato.service;

import java.util.List;

import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.NoticeVO;
import com.example.tomato.vo.PagingVO;

public interface NoticeService {

	int getCount();

	List<NoticeVO> getList(PagingVO pagingVO);

	BoardVO read(int no);
	
	boolean register(BoardVO boardVO, int memberNo);

	boolean delete(int no);

	boolean modify(BoardVO boardVO);
}
