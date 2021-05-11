package com.anif.mvc.adopt.ACommentDao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.anif.mvc.adopt.ACommentDto.ACommentDto;

@Repository
public class ACommentDaoImpl implements ACommentDao {
	
	
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ACommentDto> aCommentList(int aNo) {
		


		List<ACommentDto> list = new ArrayList<ACommentDto>(aNo);
		
		
		try {
		list = sqlSession.selectList(NAMESPACE+"aCommentList"+aNo);
		
		System.out.println(list.toString());
		
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}
	
	

}
