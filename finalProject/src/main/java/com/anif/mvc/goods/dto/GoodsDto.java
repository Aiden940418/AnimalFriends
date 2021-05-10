package com.anif.mvc.goods.dto;

import java.sql.Date;

public class GoodsDto {
	
	private int gNo;
	private String gCtgy;
	private String gName;
	private int gPrice;
	private int gStock;
	private int gCount;
	private Date gDate;
	private int gOrNo;
	private int gOrStatus;
	private int gOrTotalP;
	private int mNo;
	private int gOrDetailNo;
	private int gQut;
	private int gOrPrice;
	
	public GoodsDto() {
		super();
	}
	public GoodsDto(int gNo, String gCtgy, String gName, int gPrice, int gStock, int gCount, Date gDate, int gOrNo,
			int gOrStatus, int gOrTotalP, int mNo, int gOrDetailNo, int gQut, int gOrPrice) {
		super();
		this.gNo = gNo;
		this.gCtgy = gCtgy;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gStock = gStock;
		this.gCount = gCount;
		this.gDate = gDate;
		this.gOrNo = gOrNo;
		this.gOrStatus = gOrStatus;
		this.gOrTotalP = gOrTotalP;
		this.mNo = mNo;
		this.gOrDetailNo = gOrDetailNo;
		this.gQut = gQut;
		this.gOrPrice = gOrPrice;
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
	public int getgOrNo() {
		return gOrNo;
	}
	public void setgOrNo(int gOrNo) {
		this.gOrNo = gOrNo;
	}
	public int getgOrStatus() {
		return gOrStatus;
	}
	public void setgOrStatus(int gOrStatus) {
		this.gOrStatus = gOrStatus;
	}
	public int getgOrTotalP() {
		return gOrTotalP;
	}
	public void setgOrTotalP(int gOrTotalP) {
		this.gOrTotalP = gOrTotalP;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getgOrDetailNo() {
		return gOrDetailNo;
	}
	public void setgOrDetailNo(int gOrDetailNo) {
		this.gOrDetailNo = gOrDetailNo;
	}
	public int getgQut() {
		return gQut;
	}
	public void setgQut(int gQut) {
		this.gQut = gQut;
	}
	public int getgOrPrice() {
		return gOrPrice;
	}
	public void setgOrPrice(int gOrPrice) {
		this.gOrPrice = gOrPrice;
	}
	
	
	
	
			
	
	
	
	
}