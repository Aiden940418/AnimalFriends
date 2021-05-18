package com.anif.mvc.goods.dao;

import java.util.List;

import com.anif.mvc.goods.dto.CartDto;
import com.anif.mvc.goods.dto.CartListDto;

public interface CartDao {
	
	String NAMESPACE = "cart.";
	
	
	public void addCart(CartDto cart);
	
	public List<CartListDto> cartList(int mNo);
	
	
	public int deleteCart(CartDto cart);

}
