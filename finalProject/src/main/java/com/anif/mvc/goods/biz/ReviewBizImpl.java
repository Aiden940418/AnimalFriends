package com.anif.mvc.goods.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.goods.dao.ReviewDao;
import com.anif.mvc.goods.dto.ReviewDto;

@Service
public class ReviewBizImpl implements ReviewBiz{

	@Autowired
	private ReviewDao dao;
	
	//리뷰 상세보기
	@Override
	public ReviewDto reviewDetail(int gRewNo) {
		return dao.reviewDetail(gRewNo);
	}

	//마이페이지에서 리뷰 등록
	@Override
	public int mypageReviewWrite(ReviewDto dto) {
		return dao.mypageReviewWrite(dto);
	}

	//마이페이지에서 리뷰 수정
	@Override
	public int mypageReviewUpdate(ReviewDto dto) {
		return dao.mypageReviewUpdate(dto);
	}

	//마이페이지에서 리뷰 삭제
	@Override
	public int mypageReviewDelete(int gRewNo) {
		return dao.mypageReviewDelete(gRewNo);
	}

	//리뷰 리스트 보기
	@Override
	public List<ReviewDto> reviewList(int gNo) {
		return dao.reviewList(gNo);
	}

}
