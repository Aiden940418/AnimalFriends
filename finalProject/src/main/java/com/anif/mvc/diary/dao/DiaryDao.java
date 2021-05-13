package com.anif.mvc.diary.dao;

import java.util.List;

import com.anif.mvc.diary.dto.DiaryDto;

public interface DiaryDao {
	
	String NAMESPACE = "diary.";
	
	public List<DiaryDto> selectList();

	public List<DiaryDto> diaryListScroll(int startNumber, int endNumber);
	
	public int insert(DiaryDto dto);

}
