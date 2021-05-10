package com.anif.mvc.goods.biz;

import java.util.List;

import com.anif.mvc.goods.dto.GoodsDto;

public interface GoodsBiz {

	//전체 굿즈 리스트
	public List<GoodsDto> goodsList();

	public GoodsDto goodsDetail(int gNo);

}
