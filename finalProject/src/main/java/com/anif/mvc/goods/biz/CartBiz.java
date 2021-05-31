package com.anif.mvc.goods.biz;

import java.util.List;

import com.anif.mvc.goods.dto.CartDto;
import com.anif.mvc.goods.dto.CartListDto;
import com.anif.mvc.goods.dto.GoodsOrderDto;
import com.anif.mvc.goods.dto.OrderDetailDto;

public interface CartBiz{
	//상품담기
	public void addCart(CartDto cart);
	
	public List<CartListDto> cartList(int mNo);
	
	public int deleteCart(CartDto cart);
	
	public void orderInfo(GoodsOrderDto order);
	
	public void orderInfo_Details(OrderDetailDto orderDetail);
	
	public void cartAllDelete(int mNo);
	
	public List<GoodsOrderDto> orderList(GoodsOrderDto order);

	public int orderInfoStatusUpdate(String orderId);
	
}
