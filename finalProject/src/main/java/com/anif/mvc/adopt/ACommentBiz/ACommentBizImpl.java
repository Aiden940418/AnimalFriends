package com.anif.mvc.adopt.ACommentBiz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.adopt.ACommentDao.ACommentDao;
import com.anif.mvc.adopt.ACommentDto.ACommentDto;



@Service
public class ACommentBizImpl implements ACommentBiz{

	@Autowired
	private ACommentDao dao;
	
	
	@Override
	public List<ACommentDto> aCommentList(int aNo) {
		
	return dao.aCommentList(aNo);
	}
	
	
	

}
