package com.anif.mvc.diary.biz;

import java.util.List;

import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;

public interface DiaryBiz {
	
	public List<DiaryDto> selectList();
	public List<DiaryDto> diaryListScroll(int startNumber, int endNumber);
	public int insert(DiaryDto dto);
	
	
	//입양일기 댓글, 댓글의 답글 관련
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
	
	//좋아요 관련
	public int likeOrNot(DiaryDto dto);
	public DiaryDto selectOne(int dno);
	
	
}
