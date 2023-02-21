package com.example.tomato.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.tomato.service.AuthService;
import com.example.tomato.service.MemberService;
import com.example.tomato.vo.AuthInfoVO;
import com.example.tomato.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/auth")
public class AuthController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	AuthService authService;

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
	@GetMapping("/search_id")
	public String search_id_view(Model model) {
		log.info("search_id()..");
		String pageName = "../auth/search_id.jsp";
		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	/* 아이디찾기_action */
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
			model.addAttribute("memberEmail", member.getEmail()); // jsp페이지에서 "email로 발송했습니다" 처리용

			String title = name + "회원님의 ID입니다";
			String content = "ID: " + member.getId(); // id찾기에서 email의 content는 id이다
			boolean sendResult = authService.sendMail(email, title, content);
			// 오류검증구문
			if (sendResult == true) {
				log.info("정상발송");
				pageName = "../auth/search_id_success.jsp";
			} else {
				log.info("발송실패");
				pageName = "../auth/search_id_fail.jsp";
			}

		}

		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	/* 비밀번호초기화페이지_view */
	@GetMapping("/init_password_auth_view")
	public String init_password_auth_view(Model model) {
		log.info("init_password_auth_view()..");
		String pageName = "../auth/password_auth.jsp";
		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	/* 이메일인증_action */
	@PostMapping("/email_auth_action")
	public String email_auth_action(Model model, @RequestParam String email, AuthInfoVO authInfoVO,
			HttpSession session) {
		log.info("email_auth_action()..");

		String pageName = "";

		int findNoByEmailResult = memberService.findNoByEmail(email);
		int memberNo = 0;
		if (findNoByEmailResult != -1) {
			memberNo = findNoByEmailResult;

			String title = email + " 주소로 발송한 인증번호입니다";
			Random randNum = new Random();
			int num = randNum.nextInt(999999); // 6자리 난수
			String no = Integer.toString(num);
			while (no.length() < 6) {
				no = "0" + no;
			}
			String content = "인증코드: " + no; // email의 내용에 인증용 난수를 첨부
			boolean sendResult = authService.sendMail(email, title, content);

			// 오류검증구문
			if (sendResult == true) {
				authInfoVO.setMemberNo(memberNo);
				authInfoVO.setNo(no);

				boolean setAuthInfoResult = authService.setAuthInfo(authInfoVO); // 일단 db에 저장은 했는데, 검증과정에서는 session에서
																					// 바로 진행
				log.info(setAuthInfoResult + "");

				session.setAttribute("authInfoVO", authInfoVO); // 우선 authinfo는 session으로 넘김. 추후 변경될 가능성 있음
				session.setMaxInactiveInterval(180);
				model.addAttribute("authInfoVO", authInfoVO);
				pageName = "../auth/email_auth_confirm.jsp";
			} else {
				log.info("발송실패");
				pageName = "../auth/email_auth_fail.jsp";
			}
		} else {
			log.info("이메일 입력 오류에 의한 발송정보확인불가");
			pageName = "../auth/email_auth_fail.jsp";
		}

		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	/* 인증코드 검증 */
	@PostMapping("/email_auth_confirm_action")
	public String email_auth_confirm_action(Model model, AuthInfoVO authInfoVO, HttpSession session,
			@RequestParam String no) {
		log.info("email_auth_confirm_action()..");
		String pageName = "";
		try {
			authInfoVO = (AuthInfoVO) session.getAttribute("authInfoVO");
		} catch (Exception e) {
			log.info("인증코드가 만료되었습니다");
		}
		if (authInfoVO.getNo().equals(no)) {
			pageName = "../auth/email_auth_success.jsp"; // 완료시 jsp에 model객체를 통하여 적당한 성공완료보고값을 전달해야할 수 있다.
			session.invalidate();
		} else
			pageName = "../auth/email_auth_fail.jsp";

		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	/* 패스워드변경 진입을 위한 회원검증_action */
	@PostMapping("/init_password_auth_action")
	public String init_password_auth_action(Model model, @RequestParam String email, @RequestParam String id) {
		log.info("init_password_auth_action()..");

		String pageName = "";

		int findNoByEmailResult = memberService.findNoByEmail(email);
		int memberNoById = 0;
		try {
			int memberNoByIdResult = memberService.getNo(id);
			memberNoById = memberNoByIdResult;
		} catch (Exception e) {
			log.info("id와email이 일치하지 않습니다");
			pageName = "../auth/id_fail.jsp";
		}
		if (memberNoById == findNoByEmailResult) {
			pageName = "../auth/init_pwd.jsp";
		} else {
			pageName = "../auth/id_fail.jsp";
		}

		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	@PostMapping("/init_password_action")
	public String init_password_action(Model model, @RequestParam String id, @RequestParam String password) {
		log.info("init_password_action()..");

		String pageName = "";

		int memberNo = memberService.getNo(id);
		boolean initResult = memberService.initPassword(memberNo, password);
		if (initResult == true) {
			log.info(id + " 회원님의 비밀번호가 정상적으로 변경되었습니다");
			pageName = "../auth/init_password_success.jsp";
		} else {
			log.info(id + " 회원님의 비밀번호를 변경하는 데에 실패하였습니다");
			pageName = "../auth/init_password_fail.jsp";
		}

		model.addAttribute("pageName", pageName);
		return "template/template";
	}

	@PatchMapping("/{user_id}")
	public String withdrawal(Model model, HttpServletRequest request) {
		log.info("withdrawal()..");
		String pageName = "../auth/withdrawal.jsp";
		HttpSession session = request.getSession(); // session의 id받아오기
		String id = session.getId();
		boolean withdrawalResult = memberService.withdrawal(id);
		model.addAttribute("withdrawalResult", withdrawalResult);
		model.addAttribute("pageName", pageName);
		return "template/template";
	}
	
	@GetMapping("/login_password_error")
	public String login_password_error(Model model) {
		log.info("login_password_error()..");
		String pageName = "../auth/login_password_error.jsp";
		model.addAttribute("pageName", pageName);
		return "template/template";
	}
	
	@GetMapping("/login_disabled")
	public String login_disabled(Model model) {
		log.info("login_disabled()..");
		String pageName = "../auth/login_disabled.jsp";
		model.addAttribute("pageName", pageName);
		return "template/template";
	}
}
