package com.anif.mvc.goods.dto;

import java.util.Date;

public class OrderListDto {

    

    
  
	private String orderId;
    private int mNo;
    private int gNo;
    private String orderName;
    private String orderAddr1;
    private String orderAddr2;
    private String orderAddr3;
    private String orderPhone;
    private int amount;
    private Date orderDate;
    private String gReviewStatus;
	
	
	private int orderDetailNum;
	private int cartStock;

    
    private int num;
    private String gName;
    private int gPrice;
    private String gImg;
    
    
    
    public OrderListDto() {
  		super();
  		// TODO Auto-generated constructor stub
  	}



	public OrderListDto(String orderId, int mNo, int gNo, String orderName, String orderAddr1, String orderAddr2,
			String orderAddr3, String orderPhone, int amount, Date orderDate, String gReviewStatus, int orderDetailNum,
			int cartStock, int num, String gName, int gPrice, String gImg) {
		super();
		this.orderId = orderId;
		this.mNo = mNo;
		this.gNo = gNo;
		this.orderName = orderName;
		this.orderAddr1 = orderAddr1;
		this.orderAddr2 = orderAddr2;
		this.orderAddr3 = orderAddr3;
		this.orderPhone = orderPhone;
		this.amount = amount;
		this.orderDate = orderDate;
		this.gReviewStatus = gReviewStatus;
		this.orderDetailNum = orderDetailNum;
		this.cartStock = cartStock;
		this.num = num;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gImg = gImg;
	}



	public String getOrderId() {
		return orderId;
	}



	public void setOrderId(String orderId) {
		this.orderId = orderId;
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



	public String getOrderName() {
		return orderName;
	}



	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}



	public String getOrderAddr1() {
		return orderAddr1;
	}



	public void setOrderAddr1(String orderAddr1) {
		this.orderAddr1 = orderAddr1;
	}



	public String getOrderAddr2() {
		return orderAddr2;
	}



	public void setOrderAddr2(String orderAddr2) {
		this.orderAddr2 = orderAddr2;
	}



	public String getOrderAddr3() {
		return orderAddr3;
	}



	public void setOrderAddr3(String orderAddr3) {
		this.orderAddr3 = orderAddr3;
	}



	public String getOrderPhone() {
		return orderPhone;
	}



	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}



	public int getAmount() {
		return amount;
	}



	public void setAmount(int amount) {
		this.amount = amount;
	}



	public Date getOrderDate() {
		return orderDate;
	}



	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}



	public String getgReviewStatus() {
		return gReviewStatus;
	}



	public void setgReviewStatus(String gReviewStatus) {
		this.gReviewStatus = gReviewStatus;
	}



	public int getOrderDetailNum() {
		return orderDetailNum;
	}



	public void setOrderDetailNum(int orderDetailNum) {
		this.orderDetailNum = orderDetailNum;
	}



	public int getCartStock() {
		return cartStock;
	}



	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
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
