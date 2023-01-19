package com.example.tomato.mapper;

import com.example.tomato.vo.PagingVO;
import com.example.tomato.vo.QnaVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface QnaMapper {

    List<QnaVO> getList(PagingVO pagingVO);

    @Select("SELECT COUNT(*) FROM QNAS Q, BOARD B, MEMBERS M WHERE Q.BOARD_NO = B.NO")
    int getCount();

    @Insert("INSERT INTO QNAS (NO, BOARD_NO, HIDDEN_FLAG) VALUES (QNA_NO_SEQ.nextval, BOARD_NO_SEQ.currval, #{hiddenFlag})")
    int insert(char hiddenFlag);

    @Select("SELECT BOARD_NO FROM QNAS WHERE NO = #{no}")
    int getBoardNo(int no);
}
