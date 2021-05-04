package com.anif.mvc.qnaBoard.dao;

import java.util.List;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.qnaBoard.dto.QnaBoardDto;

public interface QnaBoardDao {
	
	String NAMESPACE = "qnaBoard.";
	
	public List<QnaBoardDto> selectList(Criteria cri);
	public int listCount();
	public QnaBoardDto selectOne(int qno);
	public int insert(QnaBoardDto dto);
	public int update(QnaBoardDto dto);
	public int delete(int qno);
	
	public List<QnaBoardDto> list(Criteria cri);
	public int listCount();

}
