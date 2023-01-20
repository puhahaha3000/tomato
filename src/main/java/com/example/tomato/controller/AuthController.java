package com.example.tomato.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/auth")
public class AuthController {

	
	
	@GetMapping("/login")
    public String login(Model model) {
        log.info("login()...");
        String pageName = "../auth/login.jsp";
        model.addAttribute("pageName", pageName);
        return "template/template";
    }

	/* 메인페이지 로그아웃 */
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        
        log.info("logoutMainGET()..");
        
        HttpSession session = request.getSession();
        
        session.invalidate();
        
        return "redirect:/";        
        
    }
}
