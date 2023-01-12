package com.example.tomato.service;

import com.example.tomato.vo.TradeVO;

import java.util.List;

public interface TradeService {
    List<TradeVO> myTrade(String memberId);
}
