package com.anif.mvc.member.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.member.dto.MemberDto;

import org.mybatis.spring.SqlSessionTemplate;


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



	@Override
	public int signUps(MemberDto dto) {
		
		
		int res = 0;
		
		
		try {
			res = sqlSession.insert(NAMESPACE+"signUps",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}



	@Override
	public int idChk(String mId) {

		int count = 0;
		
		try {
			count = sqlSession.selectOne(NAMESPACE+"idChk",mId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	
	
	
	
	

}
