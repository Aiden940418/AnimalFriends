package com.anif.mvc.diary.dao;

import java.util.List;
import java.util.Map;

import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;
import com.anif.mvc.diary.dto.LikeTableDto;

public interface DiaryDao {
	
	String NAMESPACE = "diary.";
	
	
	public List<DiaryDto> selectList();
	public List<DiaryDto> diaryListScroll(int startNumber, int endNumber);
	public int insert(DiaryDto dto);

	
	//댓글, 댓글의 답글 관련
	public List<DiaryReplyDto> DRselectList(int dno);
	public int DRinsert(DiaryReplyDto dto);
	public DiaryReplyDto DRselectOne(int drno);
	public int DRdelete(int drno);
	public int DRanswerInsert(DiaryReplyDto dto);

	//마이페이지 나의 입양일기 관련
	public List<DiaryDto> myDiarySelectList(int mNo);
	public int myDiaryDelete(int dno);
	
	//관리자페이지 입양일기 관리 관련
	public List<DiaryDto> adminDiarySelectList();
	public int adminDiaryDelete(int dno);
	
	//좋아요_여부 검사
	public int recCheck(Map<String, Object> m);
	//좋아요_row 추가
	public int recInsert(Map<String, Object> m);
	//좋아요_row 삭제
	public int recDelete(Map<String, Object> m);
	public DiaryDto recCount(int dno);
	public int likeUpdate(Map<String, Object> m);
	
}
