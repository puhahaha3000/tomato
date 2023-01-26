package com.example.tomato.service;

import com.example.tomato.vo.ItemCategoryVO;
import com.example.tomato.vo.TradeVO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface TradeService {
    List<TradeVO> myTrade(String memberId);
    List<ItemCategoryVO> itemList();

    boolean writeTrade(TradeVO tradeVO, MultipartFile image) throws Exception;
}
