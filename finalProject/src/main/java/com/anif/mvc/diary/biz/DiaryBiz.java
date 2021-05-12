package com.anif.mvc.diary.biz;

import java.util.List;

import com.anif.mvc.diary.dto.DiaryDto;

public interface DiaryBiz {
	
	public List<DiaryDto> selectList();
	
	public List<DiaryDto> diaryListScroll(int startNumber, int endNumber);

}
