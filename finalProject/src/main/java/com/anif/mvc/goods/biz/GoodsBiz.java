package com.anif.mvc.goods.biz;

import java.util.List;

import com.anif.mvc.goods.dto.GoodsDto;

public interface GoodsBiz {

	//전체 굿즈 리스트
	public List<GoodsDto> goodsList();
	
	//굿즈 상세보기
	public GoodsDto goodsDetail(int gNo);
	
	//관리자 페이지에서 굿즈 리스트
	public List<GoodsDto> adminGoodsList();
	
	//관리자 페이지에서 굿즈 리스트 상세
	public GoodsDto adminGoodsDetail(int gNo);

	//관리자 페이지에서 굿즈 등록
	public int adminGoodsWrite(GoodsDto dto);

	//관리자 페이지에서 굿즈 수정
	public int adminGoodsUpdate(GoodsDto dto);

	//관리자 페이지에서 굿즈 삭제
	public int adminGoodsDelete(int gNo);
	
	//관리자 페이지에서 굿즈 다중 삭제
	public int multiDeleteGoods(GoodsDto dto);
	
	
	

}
