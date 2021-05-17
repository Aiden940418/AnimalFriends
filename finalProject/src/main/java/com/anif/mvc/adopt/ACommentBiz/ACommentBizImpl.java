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
	
	// 코맨트 전체 불러오기 
	@Override
	public List<ACommentDto> aCommentList(int aNo) {
		
	return dao.aCommentList(aNo);
	}

	
	//코맨트 작성하기 

	@Override
	public int aCommentInsert(ACommentDto comDto) {
		return dao.aCommentInsert(comDto);
	}


	@Override
	public int aCommentDelete(ACommentDto comDto) {
	
		return dao.aCommentDelete(comDto);
	}


//	//view Cont 메소드 
//
//	@Override
//	public void replyCnt(int aNo) {
//		dao.replyCnt(aNo);
//		
//	}
//	
//	
	

}
