package com.anif.mvc.goods.dto;

import java.util.Date;

public class ReviewDto {
	
	private int gRewNo;
	private int mNo;
	private int gNo;
	private String gRewTitle;
	private String gRewContent;
	private Date gRewDate;
	
	public ReviewDto() {
		super();
	}

	public ReviewDto(int gRewNo, int mNo, int gNo, String gRewTitle, String gRewContent, Date gRewDate) {
		super();
		this.gRewNo = gRewNo;
		this.mNo = mNo;
		this.gNo = gNo;
		this.gRewTitle = gRewTitle;
		this.gRewContent = gRewContent;
		this.gRewDate = gRewDate;
	}

	public int getgRewNo() {
		return gRewNo;
	}

	public void setgRewNo(int gRewNo) {
		this.gRewNo = gRewNo;
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
	
	
}
