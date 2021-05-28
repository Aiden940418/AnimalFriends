package com.anif.mvc.adopt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.goods.dto.GoodsDto;
import com.anif.mvc.member.dto.MemberDto;

@Repository
public class AdoptDaoImpl implements AdoptDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	
	//전체 입양공고 리스트 
	
	@Override
	public List<AdoptDto> adoptList(Criteria cri) {

		List<AdoptDto> list = new ArrayList<AdoptDto>();
			
			
		try {
			list = sqlSession.selectList(NAMESPACE+"adoptList",cri);
			
		} catch (Exception e) {
			System.out.println("[error: adopt select list" );
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

		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		
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
	//관리자 페이지에서 굿즈 다중 삭제
	@Override
	public int multiDeleteAdopt(AdoptDto dto) {
		
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"multiDeleteAdopt",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	
	

	
	//view Count 메소드 

	@Override
	public void viewCount(int aNo) {
		sqlSession.update(NAMESPACE+"viewCount",aNo);
		
	}


	
	//페이징 처리 
	@Override
	public int adoptListCnt() {
		
		int cnt = 0;
		try {
			cnt = sqlSession.selectOne(NAMESPACE+"adoptListCnt");
		} catch (Exception e) {
				
			System.out.println("[error: adoptListCnt]");
			
			
			
		}
		
			return cnt;
		
	}
			
	@Override
	public List<AdoptDto> totalAreaList() {
		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"totalAreaList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<AdoptDto> seoulEastList() {
		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"seoulEastList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<AdoptDto> seoulWestList() {
		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"seoulWestList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<AdoptDto> seoulSouthList() {
		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"seoulSouthList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<AdoptDto> seoulNorthList() {
		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"seoulNorthList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<AdoptDto> GyeonggiList() {
		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		
		try {
			list = sqlSession.selectList(NAMESPACE+"GyeonggiList");
			
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<AdoptDto> adoptSelect(AdoptDto dto) {
		List<AdoptDto> list = new ArrayList<AdoptDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"adoptSelect",dto);
		} catch (Exception e) {
			System.out.println("[error: adoptSelect list" );
			e.printStackTrace();
		}
		
		
	
		return list;
	}



	
	

	
	

}
