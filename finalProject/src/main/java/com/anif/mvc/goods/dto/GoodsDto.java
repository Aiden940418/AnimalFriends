package com.anif.mvc.goods.dto;

import java.sql.Date;

public class GoodsDto {
	
	private int gNo;
	private String gCtgy;
	private String gName;
	private int gPrice;
	private String gContent;
	private int gStock;
	private int gCount;
	private Date gDate;

	//이미지 
	
	private String gImg;
	private String gThumbImg;
	
	
	public GoodsDto() {
		super();
	}


	public GoodsDto(int gNo, String gCtgy, String gName, int gPrice, String gContent, int gStock, int gCount,
			Date gDate, String gImg, String gThumbImg) {
		super();
		this.gNo = gNo;
		this.gCtgy = gCtgy;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gContent = gContent;
		this.gStock = gStock;
		this.gCount = gCount;
		this.gDate = gDate;
		this.gImg = gImg;
		this.gThumbImg = gThumbImg;
	}
	
	
	
	


	public int getgNo() {
		return gNo;
	}


	public void setgNo(int gNo) {
		this.gNo = gNo;
	}


	public String getgCtgy() {
		return gCtgy;
	}


	public void setgCtgy(String gCtgy) {
		this.gCtgy = gCtgy;
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


	public String getgContent() {
		return gContent;
	}


	public void setgContent(String gContent) {
		this.gContent = gContent;
	}


	public int getgStock() {
		return gStock;
	}


	public void setgStock(int gStock) {
		this.gStock = gStock;
	}


	public int getgCount() {
		return gCount;
	}


	public void setgCount(int gCount) {
		this.gCount = gCount;
	}


	public Date getgDate() {
		return gDate;
	}


	public void setgDate(Date gDate) {
		this.gDate = gDate;
	}


	public String getgImg() {
		return gImg;
	}


	public void setgImg(String gImg) {
		this.gImg = gImg;
	}


	public String getgThumbImg() {
		return gThumbImg;
	}


	public void setgThumbImg(String gThumbImg) {
		this.gThumbImg = gThumbImg;
	}


	@Override
	public String toString() {
		return "GoodsDto [gNo=" + gNo + ", gCtgy=" + gCtgy + ", gName=" + gName + ", gPrice=" + gPrice + ", gContent="
				+ gContent + ", gStock=" + gStock + ", gCount=" + gCount + ", gDate=" + gDate + ", gImg=" + gImg
				+ ", gThumbImg=" + gThumbImg + "]";
	}
	
	
	
}

	