package com.example.tomato.controller;

import com.example.tomato.service.MemberService;
import com.example.tomato.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/member")
public class MemberRestController {

    @Autowired
    private MemberService memberService;

    // http://localhost:8282/tomato/member/signup
    /* 클라이언트에서 회원가입 페이지 요청 받았을 경우 실행되는 메소드
       데이터 교환 형식은 JSON 형태로 작업한다. */

    // 아이디 중복 확인 버튼을 눌렀을 경우 실행
    @PostMapping("/id_confirm")
    public int id_confirm(@RequestBody String userid) {

        log.info("id_confirm() ..");

        System.out.println(userid);

        return memberService.id_confirm(userid);
    }

    // 닉네임 중복 확인 버튼을 눌렀을 경우 실행
    @PostMapping("/nickname_confirm")
    public int nickname_confirm(@RequestBody String userNickname) {

        log.info("id_confirm() ..");

        System.out.println(userNickname);

        return memberService.nickname_confirm(userNickname);
    }

    // http://localhost:8282/tomato/member/signup
    @PostMapping("/signup")
    public ResponseEntity<String> signup(@RequestBody MemberVO memberVO) {

        log.info("User signup() ..");

        ResponseEntity<String> entity = null;

        System.out.println(memberVO);

        try {
            memberService.join(memberVO);   // 회원가입 서비스 요청
            entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);

        }
        catch (Exception e) {
            e.printStackTrace();
            entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
        }

        return entity;
    }

    @PostMapping("/favorite")
    public ResponseEntity<String> favorite(@RequestBody String tradeNo) {

        int userNo = 1;   // test data

        log.info("User(" + userNo + ") : Favorite add to board : " + tradeNo);

        ResponseEntity<String> entity = null;

        try {
            boolean result = memberService.favorite(userNo, Integer.parseInt(tradeNo));

            if(result) {
                entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
            }
            else {
                Exception e = new Exception();
                e.printStackTrace();

                entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
            }

        }
        catch (Exception e) {
            e.printStackTrace();
            entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
        }

        return entity;
    }
}
