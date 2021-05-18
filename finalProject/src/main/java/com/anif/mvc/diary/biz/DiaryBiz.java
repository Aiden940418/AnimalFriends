package com.anif.mvc.diary.biz;

import java.util.List;

import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;

public interface DiaryBiz {
	
	public List<DiaryDto> selectList();
	
	public List<DiaryDto> diaryListScroll(int startNumber, int endNumber);
	
	public int insert(DiaryDto dto);
	
	
	//댓글, 댓글의 답글 관련
	public List<DiaryReplyDto> DRselectList(int dno);

	public int DRinsert(DiaryReplyDto dto);

	public DiaryReplyDto DRselectOne(int drno);

	public int DRdelete(int drno);

	public int DRanswerInsert(DiaryReplyDto dto);

}
