package com.example.tomato.service;

import com.example.tomato.vo.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface TradeService {
    List<TradeVO> myTrade(String memberId);
    List<ItemCategoryVO> itemList();

    boolean writeTrade(TradeVO tradeVO, MultipartFile image) throws Exception;

    TradeVO read(int no);
    int getTotal();

    List<TradeVO> getList(PagingVO page);

    boolean modify(TradeVO tradeVO);

    List<TradeStatusVO> statusList();

    boolean remove(int boardNo);

    List<TradeVO> getList(String curPage, TradeSearchParamVO searchParamVO);
}
