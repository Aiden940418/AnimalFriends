package com.anif.mvc.qnaBoardAdmin.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.qnaBoardAdmin.dao.QnaBoardAdminDao;
import com.anif.mvc.qnaBoardAdmin.dto.QnaBoardAdminDto;

@Service
public class QnaBoardAdminBizImpl implements QnaBoardAdminBiz{

	@Autowired
	private QnaBoardAdminDao dao;
	
	
	@Override
	public List<QnaBoardAdminDto> selectList(Criteria cri) {
		return dao.selectList(cri);
	}
	
	@Override
	public List<QnaBoardAdminDto> adoptQList() {
		return dao.adoptQList();
	}
	
	@Override
	public List<QnaBoardAdminDto> drQList() {
		return dao.drQList();
	}



	@Override
	public int listCount() {
		return dao.listCount();
	}

	@Override
	public QnaBoardAdminDto selectOne(int qno) {
		return dao.selectOne(qno);
	}

	@Override
	public int insert(QnaBoardAdminDto dto) {
		return dao.insert(dto);
	}
	
	@Override
	public int insertAnswer(QnaBoardAdminDto dto) {
		return dao.insertAnswer(dto);
	}

	@Override
	public int update(QnaBoardAdminDto dto) {
		return dao.update(dto);

	}

	@Override
	public int delete(int qno) {
		return dao.delete(qno);
	}

	





}
