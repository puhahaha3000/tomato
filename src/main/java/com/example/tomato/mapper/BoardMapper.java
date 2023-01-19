package com.example.tomato.mapper;

import com.example.tomato.vo.BoardVO;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
    @Insert("INSERT INTO BOARD (NO, MEMBER_NO, TITLE, CONTENT) VALUES (BOARD_NO_SEQ.nextval, #{no}, #{title}, #{content})")
    int insert(BoardVO boardVO, int memberNo);

    @Delete("DELETE FROM BOARD WHERE NO = #{no}")
    int delete(int no);
}
