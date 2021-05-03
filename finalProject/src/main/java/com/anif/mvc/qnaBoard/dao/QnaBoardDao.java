package com.anif.mvc.qnaBoard.dao;

import java.util.List;

import com.anif.mvc.qnaBoard.dto.QnaBoardDto;

public interface QnaBoardDao {
	
	String NAMESPACE = "qnaBoard.";
	
	public List<QnaBoardDto> selectList();
	public QnaBoardDto selectOne(int qno);
	public int insert(QnaBoardDto dto);
	public int update(QnaBoardDto dto);
	public int delete(int qno);

}
