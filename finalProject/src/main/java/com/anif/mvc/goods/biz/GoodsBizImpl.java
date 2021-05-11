package com.anif.mvc.goods.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.goods.dao.GoodsDao;
import com.anif.mvc.goods.dto.GoodsDto;

@Service
public class GoodsBizImpl implements GoodsBiz {
	
	@Autowired
	private GoodsDao dao;

	//전체 굿즈 리스트 
	@Override
	public List<GoodsDto> goodsList() {

		return dao.goodsList();
	}
	
	//굿즈 상세보기
	@Override
	public GoodsDto goodsDetail(int gNo) {
		return dao.goodsDetail(gNo);
	}
	
	//관리자 페이지에서 굿즈 리스트
	@Override
	public List<GoodsDto> adminGoodsList(int mNo) {
		return dao.adminGoodsList(mNo);
	}
	
	//관리자 페이지에서 굿즈 리스트 상세
	@Override
	public GoodsDto adminGoodsDetail(int gNo) {
		return dao.adminGoodsDetail(gNo);
		}





}