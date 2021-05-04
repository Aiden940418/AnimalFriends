package com.anif.mvc.qnaBoardAdmin.dao;

import java.util.List;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.qnaBoardAdmin.dto.QnaBoardAdminDto;

public interface QnaBoardAdminDao {
	
	String NAMESPACE = "qnaBoardAdmin.";
	
	public List<QnaBoardAdminDto> selectList();
	public QnaBoardAdminDto selectOne(int qno);
	public int insert(QnaBoardAdminDto dto);
	public int update(QnaBoardAdminDto dto);
	public int delete(int qno);
	
	public List<QnaBoardAdminDto> list(Criteria cri);
	public int listCount();

}