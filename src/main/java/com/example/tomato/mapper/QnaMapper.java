package com.example.tomato.mapper;

import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.QnaVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface QnaMapper {

    List<QnaVO> getList(PagingVO pagingVO);

    @Select("SELECT COUNT(*) FROM QNAS Q, BOARD B, MEMBERS M WHERE Q.BOARD_NO = B.NO")
    int getCount();
}
