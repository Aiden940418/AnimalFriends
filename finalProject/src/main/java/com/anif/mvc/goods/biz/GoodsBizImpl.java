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

	//전체 입양공고 리스트 
	@Override
	public List<GoodsDto> goodsList() {

		return dao.goodsList();
	}

	@Override
	public GoodsDto goodsDetail(int gNo) {
		return dao.goodsDetail(gNo);
	}
}