package com.example.tomato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestParam;


@Slf4j
@Controller
public class TestController {

	@GetMapping("/")
    public String main() {
        log.info("main()...");
        
        return "main/index";
    }
	
	@GetMapping("/mypage")
    public String mypage() {
        log.info("member/mypage()...");
        
        return "member/mypage";
    }
    @GetMapping("/modify")
    public String modify(){
        log.info("member/modify()");
        return "member/modify";
    }
    @GetMapping("/myarticle")
    public String myarticle() {
        log.info("member/myarticle()");
        return "member/my_article";
    }
    
}
