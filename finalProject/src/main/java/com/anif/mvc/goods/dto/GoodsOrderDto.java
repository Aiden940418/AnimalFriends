package com.anif.mvc.goods.dto;

import java.util.Date;

public class GoodsOrderDto {

		    
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
		    
		    
		    
			public GoodsOrderDto() {
				super();
				// TODO Auto-generated constructor stub
			}



			public GoodsOrderDto(String orderId, int mNo, int gNo, String orderName, String orderAddr1,
					String orderAddr2, String orderAddr3, String orderPhone, int amount, Date orderDate,
					String gReviewStatus) {
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
			}



			public String getgReviewStatus() {
				return gReviewStatus;
			}



			public void setgReviewStatus(String gReviewStatus) {
				this.gReviewStatus = gReviewStatus;
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



			@Override
			public String toString() {
				return "GoodsOrderDto [orderId=" + orderId + ", mNo=" + mNo + ", gNo=" + gNo + ", orderName="
						+ orderName + ", orderAddr1=" + orderAddr1 + ", orderAddr2=" + orderAddr2 + ", orderAddr3="
						+ orderAddr3 + ", orderPhone=" + orderPhone + ", amount=" + amount + ", orderDate=" + orderDate
						+ ", gReviewStatus=" + gReviewStatus + "]";
			}

			

			
			
			
			

			
			
			
}