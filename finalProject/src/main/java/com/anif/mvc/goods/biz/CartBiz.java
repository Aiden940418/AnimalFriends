package com.anif.mvc.goods.biz;

import java.util.List;

import com.anif.mvc.goods.dto.CartDto;
import com.anif.mvc.goods.dto.CartListDto;

public interface CartBiz{
	//상품담기
	public void addCart(CartDto cart);
	
	public List<CartListDto> cartList(int mNo);
	
	public int deleteCart(CartDto cart);
	
}
