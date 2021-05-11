package com.anif.mvc.diary.dto;

import java.util.Date;

public class DiaryDto {
	
	private int dno;				//입양일기 글 번호 (PK)
	private int mno;				//작성자 회원번호
	private String dcontent;		//입양일기 글 내용
	private Date ddate;				//작성날짜
	private String ddateToChar;		//작성날짜 포맷 변환 위한 필드
	private String mnick;			//작성자 닉네임
	
	
	public DiaryDto() {
		super();
	}
	public DiaryDto(int dno, int mno, String dcontent, Date ddate, String ddateToChar, String mnick) {
		super();
		this.dno = dno;
		this.mno = mno;
		this.dcontent = dcontent;
		this.ddate = ddate;
		this.ddateToChar = ddateToChar;
		this.mnick = mnick;
	}
	
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getDcontent() {
		return dcontent;
	}
	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}
	public Date getDdate() {
		return ddate;
	}
	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}
	public String getDdateToChar() {
		return ddateToChar;
	}
	public void setDdateToChar(String ddateToChar) {
		this.ddateToChar = ddateToChar;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	
	
	@Override
	public String toString() {
		return "DiaryDto [dno=" + dno + ", mno=" + mno + ", dcontent=" + dcontent + ", ddate=" + ddate
				+ ", ddateToChar=" + ddateToChar + ", mnick=" + mnick + "]";
	}
	

}
