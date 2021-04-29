package com.anif.mvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.mybatis.spring.SqlSessionTemplate;


import com.anif.mvc.dto.MemberDto;


@Repository
public class MemberDaoImpl implements MemberDao {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int signUp(MemberDto dto) {

		int res = 0;
	
		
		try {
			res = sqlSession.insert(NAMESPACE+"signUp",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	

	@Override
	public MemberDto login(MemberDto dto) {

		MemberDto res = null;
		
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"login",dto);
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		
		
		return res;
	}
	
	
	
	
	
	

}
