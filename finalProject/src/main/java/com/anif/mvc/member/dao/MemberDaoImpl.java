package com.anif.mvc.member.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.member.dto.MemberDto;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public int signUpSmember(MemberDto dto) {
		
		
		int res = 0;
		
		
		try {
			res = sqlSession.insert(NAMESPACE+"signUpSmember",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}



	@Override
	public int idChk(MemberDto dto) {

		
		int result = sqlSession.selectOne(NAMESPACE+"idChk",dto);
		
		return result;

	}



	@Override
	public boolean pwChk(String mId, String mPw) {
		
		boolean result = false;
		Map<String, String> map = new HashMap<String,String>();
		map.put("mId", mId);
		map.put("mPw", mPw);
		
		int count = sqlSession.selectOne(NAMESPACE+"pwChk",map);
		
		if(count==1) result = true;

		return result;
	}



	@Override
	public int memberUpdate(MemberDto dto) {
		
		int res = sqlSession.update(NAMESPACE+"memberUpdate",dto);
		
		return res;
	}



	@Override
	public List<MemberDto> userList() {
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"userList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
		
		
		
		
	}



	@Override
	public List<MemberDto> memberList() {
		
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"memberList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}

	
	@Override
	public List<MemberDto> iMemberList() {
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"iMemberList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}
	


	@Override
	public List<MemberDto> sMemberList() {
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"sMemberList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public List<MemberDto> qMemberList() {
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"qMemberList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public void memberDelete(String mId) {
		System.out.println("너 왜 안되니?");
		sqlSession.update(NAMESPACE+"memberDelete",mId);
		
	}


	public MemberDto selectOneMember(int mNo) {
		MemberDto dto = null;
		System.out.println("잘 넘어왔나?: "+ mNo);
		try {
			dto = sqlSession.selectOne(NAMESPACE + "selectOneMember", mNo);
		} catch (Exception e) {
			System.out.println("[error]: select one member" );
			e.printStackTrace();
		}
		
		return dto;
	}



	//비밀번호변경
	@Override
	public int updatemPw(MemberDto dto) throws Exception {
		return sqlSession.update(NAMESPACE+"updatemPw", dto);
	}



	@Override
	public MemberDto readMember(String mId) {
		System.out.println("값이 들어가니?"+mId);
		return sqlSession.selectOne(NAMESPACE+"readMember",mId);
	}



	@Override
	public MemberDto idCheck(String mId) {
		System.out.println("값이 넘어왔니?" +mId);
		return sqlSession.selectOne(NAMESPACE+"idCheck",mId);
	}












	
	
	

}
