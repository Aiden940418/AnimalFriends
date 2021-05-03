package com.anif.mvc.qnaBoard.biz;

import java.util.List;

import com.anif.mvc.qnaBoard.dto.QnaBoardDto;

public interface QnaBoardBiz {
	
	public List<QnaBoardDto> selectList();
	public QnaBoardDto selectOne(int qno);
	public int insert(QnaBoardDto dto);
	public int update(QnaBoardDto dto);
	public int delete(int qno);

}
