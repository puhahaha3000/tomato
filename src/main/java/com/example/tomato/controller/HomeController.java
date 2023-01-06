package com.example.tomato.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/template")
public class HomeController {

    @GetMapping("/favorite")
    public String favorite(Model model) {
        log.info("favorite()...");
        String pageName = "../member/favorite.jsp";
        model.addAttribute("pageName", pageName);
        return "template/template";
    }
}
