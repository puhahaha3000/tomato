package com.example.tomato.service;

import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.QnaVO;

import java.util.List;

public interface QnaService {
    List<QnaVO> getList(PagingVO pagingVO);
    int getCount();

    boolean write(BoardVO boardVO, char hiddenFlag);

    boolean delete(int no);
}
