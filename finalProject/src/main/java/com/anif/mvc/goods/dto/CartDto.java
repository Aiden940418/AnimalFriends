package com.anif.mvc.goods.dto;

import java.util.Date;

public class CartDto {
	

	
	private int cartNo;
    private int mNo;
    private int gNo;
    private int cartStock;
    private Date cartDate;
    
    
    
    
	public CartDto() {
		super();
	}




	public CartDto(int cartNo, int mNo, int gNo, int cartStock, Date cartDate) {
		super();
		this.cartNo = cartNo;
		this.mNo = mNo;
		this.gNo = gNo;
		this.cartStock = cartStock;
		this.cartDate = cartDate;
	}




	public int getCartNo() {
		return cartNo;
	}




	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}




	public int getmNo() {
		return mNo;
	}




	public void setmNo(int mNo) {
		this.mNo = mNo;
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




	public Date getCartDate() {
		return cartDate;
	}




	public void setCartDate(Date cartDate) {
		this.cartDate = cartDate;
	}




	@Override
	public String toString() {
		return "CartDto [cartNo=" + cartNo + ", mNo=" + mNo + ", gNo=" + gNo + ", cartStock=" + cartStock
				+ ", cartDate=" + cartDate + "]";
	}
    
    
    

}
