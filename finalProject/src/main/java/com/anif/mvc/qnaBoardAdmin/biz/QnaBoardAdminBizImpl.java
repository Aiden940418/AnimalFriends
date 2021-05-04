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
	public int listCount() {
		return dao.listCount();
	}

	@Override
	public QnaBoardAdminDto selectOne(int qno) {
		return dao.selectOne(qno);
	}

	@Override
	public int insert(QnaBoardAdminDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(QnaBoardAdminDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int qno) {
		// TODO Auto-generated method stub
		return 0;
	}



}
