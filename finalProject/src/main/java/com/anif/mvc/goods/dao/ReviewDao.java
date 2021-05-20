package com.anif.mvc.goods.dao;

import com.anif.mvc.goods.dto.ReviewDto;

public interface ReviewDao {

	String NAMESPACE = "review.";
	
	//리뷰 상세보기
	public ReviewDto reviewDetail(int gRewNo);
	
	//마이페이지에서 리뷰 등록
	public int mypageReviewWrite(ReviewDto dto);
	
	//마이페이지에서 리뷰 수정
	public int mypageReviewUpdate(ReviewDto dto);
	
	//마이페이지에서 리뷰 삭제
	public int mypageReviewDelete(int gRewNo);
	
}
