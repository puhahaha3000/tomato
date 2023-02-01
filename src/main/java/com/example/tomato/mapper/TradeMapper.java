package com.example.tomato.mapper;

import com.example.tomato.vo.ItemCategoryVO;
import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.TestImageVO;
import com.example.tomato.vo.TradeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TradeMapper {

    List<ItemCategoryVO> getItemList();

    int insertTradeBoard(TradeVO tradeVO);
    int insertTradeImage(TestImageVO testImageVO);

    @Select("SELECT * FROM TRADE WHERE NO = #{no}")
    TradeVO getTradeBoard(int no);

    @Select("SELECT * FROM IMAGE WHERE TRADE_NO = #{no}")
    TestImageVO getImageList(int no);

    List<TradeVO> getList(PagingVO page);

    @Select("SELECT * FROM ITEM_CATEGORY WHERE NO = ${itemCategoryNo}")
    ItemCategoryVO getItemName(int itemCategoryNo);
}

