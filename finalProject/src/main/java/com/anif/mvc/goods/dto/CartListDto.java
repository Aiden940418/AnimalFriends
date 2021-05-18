package com.anif.mvc.goods.dto;

import java.util.Date;

public class CartListDto {
	
	// CartDto
	private int cartNo;
    private int mNo;
    private int gNo;
    private int cartStock;
    private Date cartDate;
    

    
    //list Dto 
    
    
    private int num;
    private String gName;
    private int gPrice;
    private String gImg;
    
    
    
    
    
	public CartListDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public CartListDto(int cartNo, int mNo, int gNo, int cartStock, Date cartDate, int num, String gName, int gPrice,
			String gImg) {
		super();
		this.cartNo = cartNo;
		this.mNo = mNo;
		this.gNo = gNo;
		this.cartStock = cartStock;
		this.cartDate = cartDate;
		this.num = num;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gImg = gImg;
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
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public int getgPrice() {
		return gPrice;
	}
	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}
	public String getgImg() {
		return gImg;
	}
	public void setgImg(String gImg) {
		this.gImg = gImg;
	}
    
    
    
}
