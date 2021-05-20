package com.anif.mvc.diary.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;
import com.anif.mvc.diary.dto.LikeTableDto;

@Repository
public class DiaryDaoImpl implements DiaryDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public List<DiaryDto> selectList() {
		List<DiaryDto> list = new ArrayList<DiaryDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE + "selectList");
		} catch (Exception e) {
			System.out.println("[error] : Diary select list");
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<DiaryDto> diaryListScroll(int startNumber, int endNumber) {
		Map<String, Integer> numberMap = new HashMap<String, Integer>();
		numberMap.put("startNumber", startNumber);
		numberMap.put("endNumber", endNumber);
		
		List<DiaryDto> list = new ArrayList<DiaryDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE + "diaryListScroll", numberMap);
		} catch (Exception e) {
			System.out.println("[error] : Diary diaryListScroll");
			e.printStackTrace();
		}
		
		return list;
	}

	
	//입양일기 등록(insert)
	@Override
	public int insert(DiaryDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "insert", dto);
		} catch (Exception e) {
			System.out.println("[error] : Diary insert");
			e.printStackTrace();
		}
		
		return res;
	}

	
	
	//댓글, 댓글의 답글 관련
	@Override
	public List<DiaryReplyDto> DRselectList(int dno) {
		List<DiaryReplyDto> list = new ArrayList<DiaryReplyDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE + "DRselectList", dno);
		} catch (Exception e) {
			System.out.println("[error] : DRselectList");
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public int DRinsert(DiaryReplyDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "DRinsert", dto);
		} catch (Exception e) {
			System.out.println("[error] : DRinsert");
			e.printStackTrace();
		}		
		
		return res;
	}


	@Override
	public DiaryReplyDto DRselectOne(int drno) {
		DiaryReplyDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE + "DRselectOne", drno);
		} catch (Exception e) {
			System.out.println("[error] : DRselectOne");
			e.printStackTrace();
		}

		return dto;
	}


	@Override
	public int DRdelete(int drno) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "DRdelete", drno);
		} catch (Exception e) {
			System.out.println("[error] : DRdelete");
			e.printStackTrace();
		}
		
		
		return res;
	}


	@Override
	public int DRanswerInsert(DiaryReplyDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "DRanswerInsert", dto);
		} catch (Exception e) {
			System.out.println("[error] : DRanswerInsert");
			e.printStackTrace();
		}
		
		return res;
	}

	
	//마이페이지 나의 입양일기 selectList (로그인 한 회원의 작성글만 조회)
	@Override
	public List<DiaryDto> myDiarySelectList(int mNo) {
		List<DiaryDto> list = new ArrayList<DiaryDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE + "myDiarySelectList", mNo);
		} catch (Exception e) {
			System.out.println("[error] : myDiarySelectList");
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public int myDiaryDelete(int dno) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE + "myDiaryDelete", dno);
		} catch (Exception e) {
			System.out.println("[error] : myDiaryDelete");
			e.printStackTrace();
		}
		
		return res;
	}


	//관리자 페이지 입양일기 관리 리스트 조회
	@Override
	public List<DiaryDto> adminDiarySelectList() {
		List<DiaryDto> list = new ArrayList<DiaryDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE + "adminDiarySelectList");
		} catch (Exception e) {
			System.out.println("[error] : adminDiarySelectList");
			e.printStackTrace();
		}
		
		return list;
	}
	
	//관리자 페이지 입양일기 관리 삭제
	@Override
	public int adminDiaryDelete(int dno) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE + "adminDiaryDelete", dno);
		} catch (Exception e) {
			System.out.println("[error] : adminDiaryDelete");
			e.printStackTrace();
		}
		
		return res;
	}


	@Override
	public int recCheck(Map<String, Object> m) {
		int res = 0;
		
		try {
			res = (Integer)sqlSession.selectOne(NAMESPACE + "rec_check", m);
		} catch (Exception e) {
			System.out.println("[error] : recCheck");
			e.printStackTrace();		
		}
		
		
		return res;
	}


	@Override
	public int recInsert(Map<String, Object> m) {
		int res = 0;
		
		try {
			res = (Integer)sqlSession.insert(NAMESPACE + "rec_Insert", m);
		} catch (Exception e) {
			System.out.println("[error] : recUpdate");
			e.printStackTrace();		
		}
		
		
		return res;
	
	}


	@Override
	public int recDelete(Map<String, Object> m) {
		int res = 0;
		
		try {
			res = (Integer)sqlSession.insert(NAMESPACE + "rec_Delete", m);
		} catch (Exception e) {
			System.out.println("[error] : recDelete");
			e.printStackTrace();		
		}
		
		
		return res;
	
	}


	@Override
	public DiaryDto recCount(int dno) {
		DiaryDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE + "rec_Count", dno);
		} catch (Exception e) {
			System.out.println("[error] : recCount");
			e.printStackTrace();
		}
		
		return dto;
		
	}


	@Override
	public int likeUpdate(Map<String, Object> m) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE + "likeUpdate", m);
		} catch (Exception e) {
			System.out.println("[error] : likeUpdate");
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	
	

}
