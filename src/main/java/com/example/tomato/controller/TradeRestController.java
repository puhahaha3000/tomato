package com.example.tomato.controller;

import com.example.tomato.service.TradeService;
import com.example.tomato.vo.TradeVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/trade")
public class TradeRestController {

    private final TradeService tradeService;

    public TradeRestController(TradeService tradeService) {

        this.tradeService = tradeService;
    }

    @PostMapping("/write")
    public ResponseEntity<String> tradeWrite(@RequestBody TradeVO tradeVO) {

        log.info("tradeWrite() ..");

        ResponseEntity<String> entity = null;

        return entity;
    }
}
