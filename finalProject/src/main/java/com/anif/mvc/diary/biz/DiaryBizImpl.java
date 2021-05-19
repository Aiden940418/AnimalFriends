package com.anif.mvc.diary.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.diary.dao.DiaryDao;
import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;

@Service
public class DiaryBizImpl implements DiaryBiz{

	@Autowired
	private DiaryDao dao;
	
	
	@Override
	public List<DiaryDto> selectList() {
		return dao.selectList();
	}


	@Override
	public List<DiaryDto> diaryListScroll(int startNumber, int endNumber) {
		return dao.diaryListScroll(startNumber, endNumber);
	}


	@Override
	public int insert(DiaryDto dto) {
		return dao.insert(dto);
	}


	
	//댓글, 댓글의 답글 관련
	@Override
	public List<DiaryReplyDto> DRselectList(int dno) {
		return dao.DRselectList(dno);
	}


	@Override
	public int DRinsert(DiaryReplyDto dto) {
		return dao.DRinsert(dto);
	}


	@Override
	public DiaryReplyDto DRselectOne(int drno) {
		return dao.DRselectOne(drno);
	}


	@Override
	public int DRdelete(int drno) {
		return dao.DRdelete(drno);
	}


	@Override
	public int DRanswerInsert(DiaryReplyDto dto) {
		return dao.DRanswerInsert(dto);
	}


	@Override
	public List<DiaryDto> selectMyList(int getmNo) {
		return dao.selectMyList(getmNo);
	}

}
