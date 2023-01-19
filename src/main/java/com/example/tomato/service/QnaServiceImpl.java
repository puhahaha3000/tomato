package com.example.tomato.service;

import com.example.tomato.mapper.BoardMapper;
import com.example.tomato.mapper.QnaMapper;
import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.QnaVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class QnaServiceImpl implements QnaService {

    private final QnaMapper qnaMapper;
    private final BoardMapper boardMapper;

    public QnaServiceImpl(QnaMapper qnaMapper, BoardMapper boardMapper) {
        this.qnaMapper = qnaMapper;
        this.boardMapper = boardMapper;
    }

    @Override
    public List<QnaVO> getList(PagingVO pagingVO) {
        return qnaMapper.getList(pagingVO);
    }

    @Override
    public int getCount() {
        return qnaMapper.getCount();
    }

    @Override
    public boolean write(BoardVO boardVO, int memberNo, char hiddenFlag) {
        int boardResult = boardMapper.insert(boardVO, memberNo);
        int qnaResult = qnaMapper.insert(hiddenFlag);
        return boardResult == 1 && qnaResult == 1;
    }

    @Override
    public boolean delete(int no) {
        int boardNo = qnaMapper.getBoardNo(no);
        int boardResult = boardMapper.delete(boardNo);
        return boardResult == 1;
    }
}
