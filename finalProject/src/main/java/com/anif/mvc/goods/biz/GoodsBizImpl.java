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
	public List<GoodsDto> adminGoodsList() {
		return dao.adminGoodsList();
	}
	
	//관리자 페이지에서 굿즈 리스트 상세
	@Override
	public GoodsDto adminGoodsDetail(int gNo) {
		return dao.adminGoodsDetail(gNo);
		}

	//관리자 페이지에서 굿즈 등록
	@Override
	public int adminGoodsWrite(GoodsDto dto) {
		return dao.adminGoodsWrite(dto);
	}
	//관리자 페이지에서 굿즈 수정
	@Override
	public int adminGoodsUpdate(GoodsDto dto) {
		return dao.adminGoodsUpdate(dto);
	}
	//관리자 페이지에서 굿즈 삭제
	@Override
	public int adminGoodsDelete(int gNo) {
		return dao.adminGoodsDelete(gNo);
	}
	//관리자 페이지에서 굿즈 다중 삭제
	@Override
	public int multiDeleteGoods(GoodsDto dto) {
		return dao.multiDeleteGoods(dto);
	}

	//굿즈 카테고리 가방 선택
	@Override
	public List<GoodsDto> goodsBagList() {
		return dao.goodsBagList();
	}
	//굿즈 카테고리 옷 선택
	@Override
	public List<GoodsDto> goodsClothList() {
		return dao.goodsClothList();
	}
	//굿즈 카테고리 악세사리 선택
	@Override
	public List<GoodsDto> goodsAccList() {
		return dao.goodsAccList();
	}

	//관리자 굿즈 카테고리 가방 선택
	@Override
	public List<GoodsDto> adminGoodsBagList() {
		return dao.adminGoodsBagList();
	}

	//관리자 굿즈 카테고리 옷 선택
	@Override
	public List<GoodsDto> adminGoodsClothList() {
		return dao.adminGoodsClothList();
	}

	//관리자 굿즈 카테고리 악세사리 선택
	@Override
	public List<GoodsDto> adminGoodsAccList() {
		return dao.adminGoodsAccList();
	}

	@Override
	public List<GoodsDto> goodsSelect(GoodsDto dto) {
		return dao.goodsSelect(dto);
	}





}