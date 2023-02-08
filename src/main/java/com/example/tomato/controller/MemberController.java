package com.example.tomato.controller;

import com.example.tomato.service.AddressService;
import com.example.tomato.service.MemberService;
import com.example.tomato.service.TradeService;
import com.example.tomato.vo.AddressVO;
import com.example.tomato.vo.MemberVO;
import com.example.tomato.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

    private final AddressService addressService;
    private final MemberService memberService;
    private final TradeService tradeService;
    private final PagingVO pagingVO = new PagingVO();

    public MemberController(AddressService addressService, MemberService memberService, TradeService tradeService) {
        this.addressService = addressService;
        this.memberService = memberService;
        this.tradeService = tradeService;
    }

    @GetMapping("/signup_view")
    public String signup_view(Model model) {

        log.info("signup_view() ..");

        List<AddressVO> sidoNames = new ArrayList<>();
        sidoNames = addressService.sidoNameList();

        model.addAttribute("sido_names", sidoNames);

        return "member/signup_view";
    }

    // 테스트 하느라 GET 요청 사용했음 POST 로 수정요망
    @GetMapping("/mypage")
    public String mypage(Model model, HttpSession session) {

        log.info("mypage() ..");

        // String memberId = (String) session.getAttribute("memberId");
        String memberId = "qwer1234";

        MemberVO memberVO = memberService.mypage(memberId);   // 마이페이지에 띄울 내 정보 가져오기
//        List<TradeVO> tradeList = tradeService.myTrade(memberId);
        // TODO: favorite
//        List<TradeVO> favoriteList = tradeService.myFavorite();
        // TODO: chatroom count
//        int chatroomCnt = chatService.
        AddressVO addressVO = addressService.myAddress(memberId);   // 마이페이지에 내 동네 정보 가져오기

        model.addAttribute("memberVO", memberVO);
        model.addAttribute("addressVO", addressVO);

        return "member/mypage";
    }

    // 테스트 하느라 GET 요청 사용했음 POST 로 수정요망
    @GetMapping("/modify")
    public String modify(Model model, HttpSession session) {

        log.info("modify() ..");

        // String memberId = (String) session.getAttribute("memberId");
        String memberId = "qwer1234";

        MemberVO memberVO = memberService.mypage(memberId);   // 회원정보수정 띄울 내 정보 가져오기
        AddressVO userAddress = addressService.myAddress(memberId);   // 회원정보수정 띄울 내 동네 정보 가져오기

        model.addAttribute("memberVO", memberVO);
        model.addAttribute("userAddress", userAddress);

        return "member/modify";
    }

    @GetMapping("/my_favorite")
    public String myFavorite(Model model) {

        int userNo = 1;   // test data

        log.info("myFavorite()...");

        String pageName = "../member/favorite.jsp";

        model.addAttribute("myFavorite", memberService.myFavorite(userNo, pagingVO));
        model.addAttribute("pageName", pageName);

        return "template/template";
    }

}
