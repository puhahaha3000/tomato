package com.example.tomato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PakageDummy {
	
	@GetMapping("/")
	public String home() {
		log.info("index()..");
		return "index";
	}
}
