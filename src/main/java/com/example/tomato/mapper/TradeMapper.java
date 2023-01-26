package com.example.tomato.mapper;

import com.example.tomato.vo.ItemCategoryVO;
import com.example.tomato.vo.TestImageVO;
import com.example.tomato.vo.TradeVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TradeMapper {

    List<ItemCategoryVO> getItemList();

    int insertTradeBoard(TradeVO tradeVO);
    int insertTradeImage(TestImageVO testImageVO);
}

