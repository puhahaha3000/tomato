package com.example.tomato.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Controller
public class AuthController {

	@GetMapping("/auth/login")
	public String login() {
		log.info("login()..");
		return "/auth/login";
	}

    // http://localhost:8282/tomato/
    // 토마토 기본 홈페이지
    @GetMapping("/")
    public String home() {

        return "index";
    }

}
