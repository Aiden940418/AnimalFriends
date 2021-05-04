package com.anif.mvc.qnaBoard.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.qnaBoard.dto.QnaBoardDto;

@Repository
public class QnaBoardDaoImpl implements QnaBoardDao{

	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public List<QnaBoardDto> selectList(Criteria cri) {
		List<QnaBoardDto> list = new ArrayList<QnaBoardDto>();

		try {
			list = sqlSession.selectList(NAMESPACE + "selectList" , cri);
		} catch (Exception e) {
			System.out.println("[error] : QnA select list");
			e.printStackTrace();
		}

		return list;
	}
	
/*	@Override
	public List<QnaBoardDto> selectList(Criteria cri) {
		List<QnaBoardDto> list = new ArrayList<QnaBoardDto>();

		try {
			list = sqlSession.selectList(NAMESPACE + "selectList");
		} catch (Exception e) {
			System.out.println("[error] : QnA select list");
			e.printStackTrace();
		}

		return list;
	}
*/	
	
	@Override
	public int listCount() {
		int cnt = 0;
		try {
			cnt = sqlSession.selectOne(NAMESPACE + "listCount");
		} catch (Exception e) {
			System.out.println("[error] : QnA select list");
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public QnaBoardDto selectOne(int qno) {
		QnaBoardDto dto = null;

		try {
			dto = sqlSession.selectOne(NAMESPACE + "selectOne", qno);
		} catch (Exception e) {
			System.out.println("[error] : QnA select one");
			e.printStackTrace();
		}

		return dto;
	}

	@Override
	public int insert(QnaBoardDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "insert", dto);
		} catch (Exception e) {
			System.out.println("[error] : QnA insert");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int update(QnaBoardDto dto) {
		int res = 0;

		try {
			res = sqlSession.update(NAMESPACE + "update", dto);
		} catch (Exception e) {
			System.out.println("[error] : QnA update");
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
			System.out.println("[error] : QnA delete");
			e.printStackTrace();
		}
		
		return res;
	}



}
