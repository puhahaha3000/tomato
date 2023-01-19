package com.example.tomato.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/qna")
public class QnaController {
    @GetMapping("/list")
    public String list(Model model) {
        log.info("list()...");
        String pageName = "../qna/list.jsp";
        model.addAttribute("pageName", pageName);
        return "template/template";
    }
}
