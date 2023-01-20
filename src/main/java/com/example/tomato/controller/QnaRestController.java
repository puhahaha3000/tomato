package com.example.tomato.controller;

import com.example.tomato.service.MemberService;
import com.example.tomato.service.QnaService;
import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.QnaVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/qna/rest")
public class QnaRestController {
    private final QnaService qnaService;
    private final MemberService memberService;
    private final PagingVO pagingVO = new PagingVO();

    public QnaRestController(QnaService qnaService, MemberService memberService) {
        this.qnaService = qnaService;
        this.memberService = memberService;
    }

    @GetMapping("/list/{curPage}")
    public List<QnaVO> list(@PathVariable String curPage) {
        log.info("list()...");
        int count = qnaService.getCount();
        pagingVO.init(count, Integer.parseInt(curPage));
        return qnaService.getList(pagingVO);
    }

    @PostMapping("/{hiddenFlag}")
    public boolean write(@RequestBody BoardVO boardVO, @PathVariable char hiddenFlag) {
        log.info("write()...");
        // String id = ((UserDetails) (SecurityContextHolder.getContext().getAuthentication()).getPrincipal()).getUsername();
        // int no = memberService.getNo(id);
        return qnaService.write(boardVO, hiddenFlag);
    }

    @DeleteMapping("/{no}")
    public boolean delete(@PathVariable String no) {
        log.info("delete()...");
        return qnaService.delete(Integer.parseInt(no));
    }
}
