package com.anif.mvc.qnaBoard.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.qnaBoard.dao.QnaBoardDao;
import com.anif.mvc.qnaBoard.dto.QnaBoardDto;

@Service
public class QnaBoardBizImpl implements QnaBoardBiz{
	
	@Autowired
	private QnaBoardDao dao;
	

	@Override
	public List<QnaBoardDto> selectList() {
		return dao.selectList();
	}

	@Override
	public QnaBoardDto selectOne(int qno) {
		return dao.selectOne(qno);
	}

	@Override
	public int insert(QnaBoardDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int update(QnaBoardDto dto) {

		return dao.update(dto);

	}

	@Override
	public int delete(int qno) {
		return dao.delete(qno);
	}

	
	
	
	@Override
	public List<QnaBoardDto> list(Criteria cri) {
		return dao.list(cri);
	}

	@Override
	public int listCount() {
		return dao.listCount();
	}


}
