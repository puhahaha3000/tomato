package com.example.tomato.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.tomato.service.MemberService;
import com.example.tomato.service.NoticeService;
import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.NoticeVO;
import com.example.tomato.vo.PagingVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private MemberService memberService;
	
	private final PagingVO pagingVO = new PagingVO();
	
	/* 초기 리스트 */
	@GetMapping("/list")
    public String list(Model model) {
        log.info("list()..");
        String pageName = "../notice/list.jsp";
        model.addAttribute("pageName", pageName);
        return "template/template";
    }
	
	/* 현재페이지의 리스트 */
	@GetMapping("/list/{no}")
    public List<NoticeVO> list(@PathVariable String curPage) {
        log.info("list()..");
        int count = noticeService.getCount();
        pagingVO.init(count, Integer.parseInt(curPage));
        return noticeService.getList(pagingVO);
    }
	
	/* 현재 게시글 */
	@GetMapping("/{no}")
    public String detail(@PathVariable String no, Model model) {
        log.info("detail().. noticePageNo:" + no);
        model.addAttribute("noticePageDetail", noticeService.read(Integer.parseInt(no)));
        model.addAttribute("pageName", "../notice/detail.jsp");
        return "template/template";
    }
	
	/* 글작성 화면*/
	@GetMapping("/write_view")
    public String write_view(Model model) {
        log.info("write_view()..");
        String pageName = "../notice/write_view.jsp";
        model.addAttribute("pageName", pageName);
        return "template/template";
    }
	
	/* 글작성 기능 */
	@PostMapping("/write")
	public String write(Model model, BoardVO boardVO, HttpServletRequest request) {
		log.info("write()..");
		String pageName = "";
		HttpSession session = request.getSession();
		String id = session.getId();
		int memberNo = memberService.getNo(id);
		boolean registerResult = noticeService.register(boardVO, memberNo);
		model.addAttribute("registerResult",registerResult);
		model.addAttribute("pageName", pageName);
		return "template/template";
	}
	
	/* 글삭제 기능*/
	@PatchMapping("/delete/{no}")
	public String delete(@PathVariable String no, Model model) {
		log.info("delete()..");
		String pageName = "../notice/list.jsp";
		boolean deleteResult = noticeService.delete(Integer.parseInt(no));
		model.addAttribute(deleteResult);
		model.addAttribute("pageName", pageName);
		return "template/template";
	}
	
	/* 글수정 기능*/
	@PatchMapping("/modify/{no}")
	public String modify(BoardVO boardVO, Model model) {
		log.info("modify()..");
		String pageName = "../notice/list.jsp";
		boolean modifyResult = noticeService.modify(boardVO);
		model.addAttribute(modifyResult);
		model.addAttribute("pageName", pageName);
		return "template/template";
	}
}
