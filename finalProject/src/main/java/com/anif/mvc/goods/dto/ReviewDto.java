package com.anif.mvc.goods.dto;

import java.util.Date;

public class ReviewDto {
	
	private int gRewNo;
	private String gRewWriter;
	private int gNo;
	private String gRewTitle;
	private String gRewContent;
	private Date gRewDate;
	private String orderId;
	
	public ReviewDto() {
		super();
	}

	public ReviewDto(int gRewNo, String gRewWriter, int gNo, String gRewTitle, String gRewContent, Date gRewDate,
			String orderId) {
		super();
		this.gRewNo = gRewNo;
		this.gRewWriter = gRewWriter;
		this.gNo = gNo;
		this.gRewTitle = gRewTitle;
		this.gRewContent = gRewContent;
		this.gRewDate = gRewDate;
		this.orderId = orderId;
	}

	public int getgRewNo() {
		return gRewNo;
	}

	public void setgRewNo(int gRewNo) {
		this.gRewNo = gRewNo;
	}

	public String getgRewWriter() {
		return gRewWriter;
	}

	public void setgRewWriter(String gRewWriter) {
		this.gRewWriter = gRewWriter;
	}

	public int getgNo() {
		return gNo;
	}

	public void setgNo(int gNo) {
		this.gNo = gNo;
	}

	public String getgRewTitle() {
		return gRewTitle;
	}

	public void setgRewTitle(String gRewTitle) {
		this.gRewTitle = gRewTitle;
	}

	public String getgRewContent() {
		return gRewContent;
	}

	public void setgRewContent(String gRewContent) {
		this.gRewContent = gRewContent;
	}

	public Date getgRewDate() {
		return gRewDate;
	}

	public void setgRewDate(Date gRewDate) {
		this.gRewDate = gRewDate;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	
	
	
}
