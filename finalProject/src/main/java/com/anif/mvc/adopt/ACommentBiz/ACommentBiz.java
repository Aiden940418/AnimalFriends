package com.anif.mvc.adopt.ACommentBiz;

import java.util.List;

import com.anif.mvc.adopt.ACommentDto.ACommentDto;

public interface ACommentBiz {
	
	
	public List<ACommentDto> aCommentList(int aNo);

	
	public int aCommentInsert(ACommentDto comDto);
	
}
