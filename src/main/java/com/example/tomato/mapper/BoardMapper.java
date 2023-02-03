package com.example.tomato.mapper;

import com.example.tomato.vo.BoardVO;
import org.apache.ibatis.annotations.*;

@Mapper
public interface BoardMapper {
    @Insert("INSERT INTO BOARD (NO, MEMBER_NO, TITLE, CONTENT) VALUES (BOARD_NO_SEQ.nextval, #{memberNo}, #{title}, #{content})")
    int insert(BoardVO boardVO);

    @Delete("UPDATE BOARD SET DEL_FLAG = 'Y' WHERE NO = #{no}")
    int delete(int no);

    @Select("SELECT * FROM BOARD WHERE NO = #{boardNo}")
    BoardVO getBoard(int boardNo);

    @Select("SELECT COUNT(*) FROM TRADE")
    int getTotalCount();

    @Update("UPDATE BOARD SET TITLE =#{title}, CONTENT = #{content}, MODIFIED_DATE = SYSDATE WHERE NO = #{no}")
    int updateBoard(BoardVO boardVO);
}
