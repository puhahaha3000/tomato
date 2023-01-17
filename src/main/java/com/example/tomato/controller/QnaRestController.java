package com.example.tomato.controller;

import com.example.tomato.service.QnaService;
import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.QnaVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/qna/rest")
public class QnaRestController {
    private final QnaService qnaService;
    private final PagingVO pagingVO = new PagingVO();

    public QnaRestController(QnaService qnaService) {
        this.qnaService = qnaService;
    }

    @GetMapping("/list/{curPage}")
    public List<QnaVO> list(@PathVariable String curPage) {
        log.info("list()...");
        int count = qnaService.getCount();
        pagingVO.init(count, Integer.parseInt(curPage));
        return qnaService.getList(pagingVO);
    }
}
