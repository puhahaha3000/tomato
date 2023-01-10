package com.example.tomato.controller;

import com.example.tomato.service.AddressService;
import com.example.tomato.vo.AddressVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private AddressService addressService;

    @GetMapping("/signup_view")
    public String signup_view(Model model) {

        log.info("signup_view() ..");

        List<AddressVO> sidoNames = new ArrayList<>();
        sidoNames = addressService.sidoNameList();

        model.addAttribute("sido_names", sidoNames);

        return "member/signup_view";
    }

}
