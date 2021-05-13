package com.anif.mvc.adopt.ACommentDao;

import java.util.List;

import com.anif.mvc.adopt.ACommentDto.ACommentDto;

public interface ACommentDao {
	
	String NAMESPACE = "aComment.";

	
	public List<ACommentDto> aCommentList(int aNo);
	
	public int aCommentInsert(ACommentDto comDto);
	
	public int aCommentDelete(ACommentDto comDto);
	
	public void replyCnt(int aNo);
	
	

}
