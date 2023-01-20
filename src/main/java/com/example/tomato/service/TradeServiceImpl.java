package com.example.tomato.service;

import com.example.tomato.mapper.BoardMapper;
import com.example.tomato.mapper.TradeMapper;
import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.ItemCategoryVO;
import com.example.tomato.vo.TradeVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Service
@Transactional
public class TradeServiceImpl implements TradeService {

    private final TradeMapper tradeMapper;
    private final BoardMapper boardMapper;

    public TradeServiceImpl(TradeMapper tradeMapper, BoardMapper boardMapper) {

        this.tradeMapper = tradeMapper;
        this.boardMapper = boardMapper;
    }

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

    @Override
    public void writeTrade(TradeVO tradeVO) {

        log.info("insertTrade() ..");

        List<BoardVO> boardVO = tradeVO.getBoardVOList();
        log.info(boardVO.get(0).toString());

        int boardResult = boardMapper.insert(boardVO.get(0));
        int tradeResult = tradeMapper.insert(tradeVO);

    }
}
