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
	
	
	
	

}
