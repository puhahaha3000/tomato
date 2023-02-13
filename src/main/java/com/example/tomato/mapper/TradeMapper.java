package com.example.tomato.mapper;

import com.example.tomato.vo.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface TradeMapper {

    List<ItemCategoryVO> getItemList();

    int insertTradeBoard(TradeVO tradeVO);
    int insertTradeImage(TestImageVO testImageVO);

    TradeVO getBoard(int no);

    List<TradeVO> getList(PagingVO page);

    int updateTrade(TradeVO tradeVO);

    @Select("SELECT * FROM TRADE_STATUS")
    List<TradeStatusVO> getStatusList();

    @Update("UPDATE BOARD SET DEL_FLAG = 'Y' WHERE NO = #{boardNo}")
    int delete(int boardNo);

    List<TradeVO> getMyFavorite(int userNo, PagingVO pagingVO);

    List<TradeVO> getMyArticle(int userNo, PagingVO pagingVO);

    List<TradeVO> getList(TradeSearchParamVO tradeSearchParamVO);
    int getCount(TradeSearchParamVO tradeSearchParamVO);
}

