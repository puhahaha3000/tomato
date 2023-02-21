package com.example.tomato.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.tomato.mapper.NoticeMapper;
import com.example.tomato.vo.BoardVO;
import com.example.tomato.vo.NoticeVO;
import com.example.tomato.vo.PagingVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public int getCount() {
		return noticeMapper.getCount();
	}

	@Override
	public List<NoticeVO> getList(PagingVO pagingVO) {
		return noticeMapper.getList(pagingVO);
	}

	@Override
	public BoardVO read(int no) {
		return noticeMapper.getNoticePage(no);
	}
	
	@Override
	public boolean register(BoardVO boardVO, int memberNo) {
		try {
			boardVO.setMemberNo(memberNo);
			noticeMapper.insertBoard(boardVO);
			int boardNo = noticeMapper.getCurrvalBoardNo();	//서브쿼리로 currval사용불가
			noticeMapper.insertNotice(boardNo);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(int no) {
		try {
			noticeMapper.deleteNotice(no);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean modify(BoardVO boardVO) {
		try {
			noticeMapper.updateNotice(boardVO);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addHit(int no) {
		try {
			noticeMapper.updateNoticeHit(no);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
