package com.anif.mvc.goods.dao;

import com.anif.mvc.goods.dto.CartDto;

public interface CartDao {
	
	String NAMESPACE = "cart.";
	
	
	public void addCart(CartDto cart);
	

}
