package com.example.tomato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AuthController {

	@GetMapping("/auth/login")
	public String login() {
		log.info("login()..");
		return "/auth/login";
	}

	@PostMapping("/auth/logout")
	public String logout() {
		log.info("logout()..");
		return "/auth/logout";
	}
}
