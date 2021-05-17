package com.anif.mvc.goods.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.goods.dto.CartDto;
import com.anif.mvc.goods.dto.CartListDto;


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
	
	
	
	
	

}
