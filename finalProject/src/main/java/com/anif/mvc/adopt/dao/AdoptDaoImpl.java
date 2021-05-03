package com.anif.mvc.adopt.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.anif.mvc.adopt.dto.AdoptDto;

@Repository
public class AdoptDaoImpl implements AdoptDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public AdoptDto adoptDetail(int aNo) {
		AdoptDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"adoptDetail",aNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int myadoptWrite(AdoptDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"myadoptWrite",dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int myadoptUpdate(AdoptDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(NAMESPACE+"myadoptUpdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	
	

}
