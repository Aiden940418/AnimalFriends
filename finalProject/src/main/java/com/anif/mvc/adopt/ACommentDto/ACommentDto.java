package com.anif.mvc.adopt.ACommentDto;

import java.util.Date;

public class ACommentDto {

	
	private int aComNo; //adopt 댓글 시퀀스 
	private int aNo; // adopt 게시글번호(FK)
	private String writer; // adopt writer(login.mNick)
	private String aComContent; // adopt content 
	private Date aComDate; // adopt insertDate 
	
	
	
	public ACommentDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public ACommentDto(int aComNo, int aNo, String writer, String aComContent, Date aComDate) {
		super();
		this.aComNo = aComNo;
		this.aNo = aNo;
		this.writer = writer;
		this.aComContent = aComContent;
		this.aComDate = aComDate;
	}



	public int getaComNo() {
		return aComNo;
	}



	public void setaComNo(int aComNo) {
		this.aComNo = aComNo;
	}



	public int getaNo() {
		return aNo;
	}



	public void setaNo(int aNo) {
		this.aNo = aNo;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public String getaComContent() {
		return aComContent;
	}



	public void setaComContent(String aComContent) {
		this.aComContent = aComContent;
	}



	public Date getaComDate() {
		return aComDate;
	}



	public void setaComDate(Date aComDate) {
		this.aComDate = aComDate;
	}



	@Override
	public String toString() {
		return "ACommentDto [aComNo=" + aComNo + ", aNo=" + aNo + ", writer=" + writer + ", aComContent=" + aComContent
				+ ", aComDate=" + aComDate + "]";
	}
	
	
	



}