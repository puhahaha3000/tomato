package com.example.tomato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TestController {

	@GetMapping("/")
    public String main() {
        log.info("main()...");
        
        return "main/index";
    }
	
	@GetMapping("/modify")
    public String modify() {
        log.info("modify()...");
        
        return "member/modify";
    }

}
