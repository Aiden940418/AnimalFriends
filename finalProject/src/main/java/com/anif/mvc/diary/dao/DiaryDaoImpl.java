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
	public int likeOrNot(DiaryDto dto) {
		LikeTableDto likeDto = null;
		int res1 = 0;
		int res2 = 0;
		int Allres = 0;
		
		try {
			likeDto = sqlSession.selectOne(NAMESPACE + "likeOrNot", dto);
		} catch (Exception e) {
			System.out.println("[error] : likeOrNot");
			e.printStackTrace();
		}
		
		//없거나 N이면 좋아요 수 증가
		//likeyn이 Y면 좋아요 수 감소
		System.out.println("%%%%%%%%%%%%%%%"+likeDto);
		if(likeDto==null) {
			//좋아요 수 증가, 새로 row insert
			
			res1 = sqlSession.update(NAMESPACE + "addLikeCnt", dto);
			res2 = sqlSession.insert(NAMESPACE + "newLike", dto);
			System.out.println("@@@@@@@@@@@@@@@@@1번째 실행: "+res1+res2);
			
		}else if(likeDto.getLikeyn().equals("N")){
			//좋아요 수 증가, row update
			
			res1 = sqlSession.update(NAMESPACE + "addLikeCnt", dto);
			res2 = sqlSession.update(NAMESPACE + "addLike", dto);
			System.out.println("@@@@@@@@@@@@@@@@@2번째 실행: "+res1+res2);
			
		}else if(likeDto.getLikeyn().equals("Y")) {
			//좋아요 수 감소, row update
			res1 = sqlSession.update(NAMESPACE + "removeLikeCnt", dto);
			res2 = sqlSession.update(NAMESPACE + "removeLike", dto);
			System.out.println("@@@@@@@@@@@@@@@@@3번째 실행: "+res1+res2);
		}
		
		
		return Allres = (res1>0 && res2>0) ? 1 : 0;
	}


	@Override
	public DiaryDto selectOne(int dno) {
		DiaryDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE + "selectOne", dno);
		} catch (Exception e) {
			System.out.println("[error] : Diary SELECT ONE");
			e.printStackTrace();
		}
		
		return dto;
	}
	

}
