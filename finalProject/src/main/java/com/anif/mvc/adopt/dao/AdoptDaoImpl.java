package com.anif.mvc.adopt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.anif.mvc.adopt.dto.AdoptDto;

@Repository
public class AdoptDaoImpl implements AdoptDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	
	//전체 입양공고 리스트 
	
	@Override
	public List<AdoptDto> adoptList() {

		List<AdoptDto> list = new ArrayList<AdoptDto>();
			
			
		try {
			list = sqlSession.selectList(NAMESPACE+"adoptList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}
	

	//전체 입양공고 상세 
	@Override
	public AdoptDto adoptDetail(int aNo) {
		AdoptDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"adoptDetail",aNo);
			System.out.println(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	
	//나의 입양공고 등록 
	@Override
	public int myadoptWrite(AdoptDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"myadoptWrite",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	
	//나의 입양공고 수정 

	@Override
	public int myAdoptUpdate(AdoptDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(NAMESPACE+"myAdoptUpdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	
	//나의 입양공고 전체 보기 

	@Override
	public List<AdoptDto> myAdoptList(int mNo) {

		List<AdoptDto> list = new ArrayList<AdoptDto>(mNo);
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"myAdoptList",mNo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	
	//나의 입양공고 상세보기 

	@Override
	public AdoptDto myAdoptDetail(int aNo) {
		
		AdoptDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"myAdoptDetail",aNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return res;
	}

	
	//나의 입양공고 삭제 

	@Override
	public int myAdoptDelete(int aNo) {

		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"myAdoptDelete",aNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	
	

	
	

}
