package com.anif.mvc.goods.biz;

import java.util.List;

import com.anif.mvc.goods.dto.ReviewDto;

public interface ReviewBiz {

	//리뷰 상세보기
	public ReviewDto reviewDetail(int gRewNo);
	
	//마이페이지에서 리뷰 등록
	public int mypageReviewWrite(ReviewDto dto);
	
	//마이페이지에서 리뷰 수정
	public int mypageReviewUpdate(ReviewDto dto);
	
	//마이페이지에서 리뷰 삭제
	public int mypageReviewDelete(int gRewNo);
	
	//리뷰 리스트 보기
	public List<ReviewDto> reviewList(int gNo);
	
}
