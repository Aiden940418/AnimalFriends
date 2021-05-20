package com.anif.mvc.goods.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.goods.dto.ReviewDto;

@Repository
public class ReviewDaoImpl implements ReviewDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//리뷰 상세보기
	@Override
	public ReviewDto reviewDetail(int gRewNo) {
		ReviewDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"reviewDetail",gRewNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	//마이페이지에서 리뷰 등록
	@Override
	public int mypageReviewWrite(ReviewDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"mypageReviewWrite",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	//마이페이지에서 리뷰 수정
	@Override
	public int mypageReviewUpdate(ReviewDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"mypageReviewUpdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	//마이페이지에서 리뷰 삭제
	@Override
	public int mypageReviewDelete(int gRewNo) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"mypageReviewDelete",gRewNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

}
