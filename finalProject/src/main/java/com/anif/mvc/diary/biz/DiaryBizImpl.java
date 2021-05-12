package com.anif.mvc.diary.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.diary.dao.DiaryDao;
import com.anif.mvc.diary.dto.DiaryDto;

@Service
public class DiaryBizImpl implements DiaryBiz{

	@Autowired
	private DiaryDao dao;
	
	
	@Override
	public List<DiaryDto> selectList() {
		return dao.selectList();
	}

}
