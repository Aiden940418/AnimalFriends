package com.anif.mvc.diary.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.diary.dao.DiaryDao;
import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;
import com.anif.mvc.diary.dto.LikeTableDto;

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
	public List<DiaryDto> myDiarySelectList(int mNo) {
		return dao.myDiarySelectList(mNo);
	}


	@Override
	public int myDiaryDelete(int dno) {
		return dao.myDiaryDelete(dno);
	}


	@Override
	public List<DiaryDto> adminDiarySelectList() {
		return dao.adminDiarySelectList();
	}


	@Override
	public int adminDiaryDelete(int dno) {
		return dao.adminDiaryDelete(dno);
	}

	
	//좋아요_여부 검사
	@Override
	public int recCheck(Map<String, Object> m) {
		return dao.recCheck(m);
	}

	//좋아요_row 추가
	@Override
	public int recInsert(Map<String, Object> m) {
		return dao.recInsert(m);
	}

	//좋아요_row 삭제
	@Override
	public int recDelete(Map<String, Object> m) {
		return dao.recDelete(m);
	}


	@Override
	public DiaryDto recCount(int dno) {
		return dao.recCount(dno);
	}


	@Override
	public int likeUpdate(Map<String, Object> m) {
		return dao.likeUpdate(m);
	}

}
