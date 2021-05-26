package com.anif.mvc.diary.dao;

import java.util.List;

import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;
import com.anif.mvc.diary.dto.ProfileImgDto;

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
	
	//좋아요 관련
	public int likeOrNot(DiaryDto dto);
	public DiaryDto selectOne(int dno);
	
	//나의 입양일기 프로필 사진
	public int myDrPrfRorURes(ProfileImgDto dto);
	public ProfileImgDto profileImgSelect(int mNo);
	
}
