package com.example.tomato.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.NoticeVO;
import com.example.tomato.vo.PagingVO;

@Mapper
public interface NoticeMapper {

	@Select("SELECT COUNT(*) FROM NOTICE N, BOARD B WHERE N.BOARD_NO = B.NO AND NOT B.DEL_FLAG = 'Y'")
	int getCount();

	List<NoticeVO> getList(PagingVO pagingVO);

	@Select("SELECT * FROM BOARD WHERE NO = #{no}")
	BoardVO getNoticePage(int no);
	
	void insertBoard(BoardVO boardVO);

	@Select("SELECT BOARD_NO_SEQ.CURRVAL FROM DUAL")
	int getCurrvalBoardNo();
	
	void insertNotice(int boardNo);

	@Update("UPDATE BOARD SET DEL_FLAG = 'Y' WHERE NO = #{no}")
	void deleteNotice(int no);

	void updateNotice(BoardVO boardVO);

	@Update("UPDATE BOARD SET HIT = HIT + 1 WHERE NO = #{no}")
	void updateNoticeHit(int no);

}
