package com.anif.mvc.goods.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.goods.dto.CartDto;
import com.anif.mvc.goods.dto.CartListDto;
import com.anif.mvc.goods.dto.GoodsOrderDto;
import com.anif.mvc.goods.dto.OrderDetailDto;


@Repository
public class CartDaoImpl implements CartDao {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public void addCart(CartDto cart) {
		
		sqlSession.insert(NAMESPACE+"addCart",cart);
		
	}


	@Override
	public List<CartListDto> cartList(int mNo) {

		return sqlSession.selectList(NAMESPACE+"cartList",mNo);
	}


	@Override
	public int deleteCart(CartDto cart) {
		
		
		return sqlSession.delete(NAMESPACE+"deleteCart",cart);
	}


	@Override
	public void orderInfo(GoodsOrderDto order) {
		sqlSession.insert(NAMESPACE+"orderInfo",order);
		
	}


	@Override
	public void orderInfo_Details(OrderDetailDto orderDetail) {
		sqlSession.insert(NAMESPACE+"orderInfo_Details",orderDetail);
		
	}


	@Override
	public void cartAllDelete(int mNo) {
		sqlSession.delete(NAMESPACE+"cartAllDelete",mNo);
		
	}


	@Override
	public List<GoodsOrderDto> orderList(GoodsOrderDto order) {
		return sqlSession.selectList(NAMESPACE+"orderList",order);
	
	}


	@Override
	public int orderInfoStatusUpdate(int orderId) {
		return sqlSession.update(NAMESPACE+"orderInfoStatusUpdate",orderId);
	}
	
	
	
	
	
	
	

}
