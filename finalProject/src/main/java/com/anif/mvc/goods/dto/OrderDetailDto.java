package com.anif.mvc.goods.dto;

public class OrderDetailDto {

	
	private int orderDetailNum;
	private String orderId;
	private int gNo;
	private int cartStock;
	
	
	
	public OrderDetailDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public OrderDetailDto(int orderDetailNum, String orderId, int gNo, int cartStock) {
		super();
		this.orderDetailNum = orderDetailNum;
		this.orderId = orderId;
		this.gNo = gNo;
		this.cartStock = cartStock;
	}



	public int getOrderDetailNum() {
		return orderDetailNum;
	}



	public void setOrderDetailNum(int orderDetailNum) {
		this.orderDetailNum = orderDetailNum;
	}



	public String getOrderId() {
		return orderId;
	}



	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}



	public int getgNo() {
		return gNo;
	}



	public void setgNo(int gNo) {
		this.gNo = gNo;
	}



	public int getCartStock() {
		return cartStock;
	}



	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
	}



	@Override
	public String toString() {
		return "OrderDetailDto [orderDetailNum=" + orderDetailNum + ", orderId=" + orderId + ", gNo=" + gNo
				+ ", cartStock=" + cartStock + "]";
	}
	

	
	
	
	
	
}
