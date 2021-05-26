package com.anif.mvc.qnaBoardAdmin.biz;

import java.util.List;

import com.anif.mvc.common.pagination.SearchCriteria;
import com.anif.mvc.qnaBoardAdmin.dto.QnaBoardAdminDto;

public interface QnaBoardAdminBiz {
	
	public List<QnaBoardAdminDto> selectList(SearchCriteria scri);
//	public List<QnaBoardAdminDto> adoptQList();
//	public List<QnaBoardAdminDto> drQList();
	public int listCount(SearchCriteria scri);
	public QnaBoardAdminDto selectOne(int qno);
	public int insert(QnaBoardAdminDto dto);
	public int insertAnswer(QnaBoardAdminDto dto);
	public int update(QnaBoardAdminDto dto);
	public int delete(int qno);
	
	

}
