package com.anif.mvc.goods.dao;

import java.util.List;

import com.anif.mvc.goods.dto.GoodsDto;

public interface GoodsDao {
	
	String NAMESPACE = "goods.";
	
	public List<GoodsDto> goodsList();

	public GoodsDto goodsDetail(int gNo); 

}
