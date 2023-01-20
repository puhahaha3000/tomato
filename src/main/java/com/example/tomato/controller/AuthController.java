package com.example.tomato.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.tomato.service.MemberService;
import com.example.tomato.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/auth")
public class AuthController {

	private final MemberService memberService;

	public AuthController(MemberService memberService) {
		this.memberService = memberService;
	}

	/* 메인페이지 로그인 */
	@GetMapping("/login")
	public String login(Model model) {
		log.info("login()..");
		String pageName = "../auth/login.jsp";
		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	/* 메인페이지 로그아웃 */
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logoutMainGET(HttpServletRequest request) throws Exception {

		log.info("logoutMainGET()..");

		HttpSession session = request.getSession();

		session.invalidate();

		return "redirect:/";

	}

	/* 메인페이지 아이디찾기_view */
	@GetMapping("/search_id_view")
	public String search_id_view(Model model) {
		log.info("search_id_view()..");
		String pageName = "../auth/search_id.jsp";
		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	/* 메인페이지 아이디찾기_action */
	@PostMapping("/search_id_action")
	public String search_id_action(Model model, MemberVO member) {
		log.info("search_id_action()..");
		
		String pageName = "";
		String email = member.getEmail();
		String name = member.getName();
		member = memberService.findId(email, name);
		
		if (member == null)
			pageName = "../auth/search_id_fail.jsp";
		else {
			log.info("회원검증완료");
			model.addAttribute("memberEmail", member.getEmail());	//jsp페이지에서 "email로 발송했습니다" 처리용
			
			String title = "회원님의 ID입니다";
			String content = "ID: " + member.getId();		//id찾기에서 email의 content는 id이다
			int sendResult = memberService.sendMail(email, title, content);
			//오류검증구문
			if (sendResult == 0)
				log.info("정상발송");
			else
				log.info("발송실패");
			pageName = "../auth/search_id_success.jsp";
		}
		
		model.addAttribute("pageName", pageName);
		return "template/template";
	}

}
