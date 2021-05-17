package com.anif.mvc.goods.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.goods.dto.CartDto;


@Repository
public class CartDaoImpl implements CartDao {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public void addCart(CartDto cart) {
		
		sqlSession.insert(NAMESPACE+"addCart",cart);
		
	}
	
	
	
	
	

}
