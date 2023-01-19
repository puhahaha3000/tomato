package com.example.tomato.service;

import com.example.tomato.mapper.TradeMapper;
import com.example.tomato.vo.ItemCategoryVO;
import com.example.tomato.vo.TradeVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class TradeServiceImpl implements TradeService {

    @Autowired
    private TradeMapper tradeMapper;

    @Override
    public List<TradeVO> myTrade(String memberId) {

        // TODO: trade my list

        return null;
    }

    @Override
    public List<ItemCategoryVO> itemList() {

        log.info("itemList() ..");

        return tradeMapper.getItemList();
    }
}
