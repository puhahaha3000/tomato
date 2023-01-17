package com.example.tomato.service;

import com.example.tomato.mapper.QnaMapper;
import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.QnaVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QnaServiceImpl implements QnaService {

    private final QnaMapper qnaMapper;

    public QnaServiceImpl(QnaMapper qnaMapper) {
        this.qnaMapper = qnaMapper;
    }

    @Override
    public List<QnaVO> getList(PagingVO pagingVO) {
        return qnaMapper.getList(pagingVO);
    }

    @Override
    public int getCount() {
        return qnaMapper.getCount();
    }
}
