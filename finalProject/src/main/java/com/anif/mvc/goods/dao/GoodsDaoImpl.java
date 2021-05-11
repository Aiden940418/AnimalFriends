package com.anif.mvc.goods.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.goods.dto.GoodsDto;

@Service
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	//전체 굿즈 리스트
	@Override
	public List<GoodsDto> goodsList() {
		
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"goodsList");
		} catch (Exception e) {
			System.out.println("[error]: select list" );
			e.printStackTrace();
		}		
		return list;
	}

	//굿즈 상세보기
	@Override
	public GoodsDto goodsDetail(int gNo) {
		GoodsDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"goodsDetail",gNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	
	//관리자 페이지에서 굿즈 리스트
	@Override
	public List<GoodsDto> adminGoodsList(int mNo) {
		
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"adminGoodsList");
		} catch (Exception e) {
			System.out.println("[error]: select list" );
			e.printStackTrace();
		}
		return list;
	}

	//관리자 페이지에서 굿즈 리스트 상세
	@Override
	public GoodsDto adminGoodsDetail(int gNo) {
		
		GoodsDto res = null; 
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"adminGoodsDetail",gNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	

	

}
