package com.example.tomato.controller;

import com.example.tomato.service.AddressService;
import com.example.tomato.service.MemberService;
import com.example.tomato.service.TradeService;
import com.example.tomato.vo.AddressVO;
import com.example.tomato.vo.ItemCategoryVO;
import com.example.tomato.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/trade")
public class TradeController {

    private final AddressService addressService;
    private final MemberService memberService;
    private final TradeService tradeService;

    public TradeController(AddressService addressService, MemberService memberService, TradeService tradeService) {
        this.addressService = addressService;
        this.memberService = memberService;
        this.tradeService = tradeService;
    }


    @GetMapping("write_view")
    public String writeView(Model model) {

        String memberId = "qwer1234";

        log.info("writeView() ..");

        MemberVO memberVO = memberService.mypage(memberId);   // 거래게시판에 띄울 내 닉네임 가져오기
        AddressVO addressVO = addressService.myAddress(memberId);   // 마이페이지에 내 동네 정보 가져오기
        List<ItemCategoryVO> itemCategoryVO = tradeService.itemList();   // 상품 카테고리 정보 가져오기

        model.addAttribute("memberVO", memberVO);
        model.addAttribute("addressVO", addressVO);
        model.addAttribute("itemCategoryVO", itemCategoryVO);

        return "trade/write_view";
    }
}
