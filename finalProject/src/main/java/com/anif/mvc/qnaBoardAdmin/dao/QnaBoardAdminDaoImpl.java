package com.anif.mvc.qnaBoardAdmin.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.qnaBoard.dto.QnaBoardDto;
import com.anif.mvc.qnaBoardAdmin.dto.QnaBoardAdminDto;

@Repository
public class QnaBoardAdminDaoImpl implements QnaBoardAdminDao{

	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public List<QnaBoardAdminDto> selectList(Criteria cri) {
		List<QnaBoardAdminDto> list = new ArrayList<QnaBoardAdminDto>();

		try {
			list = sqlSession.selectList(NAMESPACE + "selectList" , cri);
		} catch (Exception e) {
			System.out.println("[error] : QnA Admin select list");
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public int listCount() {
		int cnt = 0;
		try {
			cnt = sqlSession.selectOne(NAMESPACE + "listCount");
		} catch (Exception e) {
			System.out.println("[error] : QnA Admin select list");
			e.printStackTrace();
		}

		return cnt;
	}

	@Override
	public QnaBoardAdminDto selectOne(int qno) {
		QnaBoardAdminDto dto = null;

		try {
			dto = sqlSession.selectOne(NAMESPACE + "selectOne", qno);
		} catch (Exception e) {
			System.out.println("[error] : QnA Admin select one");
			e.printStackTrace();
		}

		return dto;
	}

	@Override
	public int insert(QnaBoardAdminDto dto) {
		return 0;
	}

	@Override
	public int update(QnaBoardAdminDto dto) {
		int res = 0;

		try {
			res = sqlSession.update(NAMESPACE + "update", dto);
		} catch (Exception e) {
			System.out.println("[error] : QnA Admin update");
			e.printStackTrace();
		}

		return res;
	}

	@Override
	public int delete(int qno) {
		int res = 0;

		try {
			res = sqlSession.delete(NAMESPACE + "delete", qno);
		} catch (Exception e) {
			System.out.println("[error] : QnA Admin delete");
			e.printStackTrace();
		}

		return res;
	}



}
