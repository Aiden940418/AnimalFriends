package com.anif.mvc.diary.dto;

import java.util.Date;

public class DiaryReplyDto {
	
	private int drno;				//댓글 번호 (PK) 
	private int dno;				//게시글 번호 (본 게시글) (Diary 테이블 DNO 외래키 참조)
	private int drgroupno;			//댓글 그룹 번호               - 댓글- +1(SEQ), 댓글의 답글- 부모댓글과 동일
	private int drtitletab;			//댓글 들여쓰기 공백          - 댓글-0, 댓글의답글-1
	private int drgroupsq;			//댓글 그룹 순서번호          - 댓글-0, 댓글의답글- +1씩
	private int mno;				//회원 번호 (댓글 작성자) (Member 테이블 MNO 외래키 참조)
	private String drcontent;		//댓글 내용
	private Date drdate;			//댓글 작성 날짜
	
	private String drdateToChar;	//작성날짜 날짜 포맷변환 위한 필드 
	private String mnick; 			//작성자 닉네임
	
	
	public DiaryReplyDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DiaryReplyDto(int drno, int dno, int drgroupno, int drtitletab, int drgroupsq, int mno, String drcontent,
			Date drdate, String drdateToChar, String mnick) {
		super();
		this.drno = drno;
		this.dno = dno;
		this.drgroupno = drgroupno;
		this.drtitletab = drtitletab;
		this.drgroupsq = drgroupsq;
		this.mno = mno;
		this.drcontent = drcontent;
		this.drdate = drdate;
		this.drdateToChar = drdateToChar;
		this.mnick = mnick;
	}
	
	public int getDrno() {
		return drno;
	}
	public void setDrno(int drno) {
		this.drno = drno;
	}
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	public int getDrgroupno() {
		return drgroupno;
	}
	public void setDrgroupno(int drgroupno) {
		this.drgroupno = drgroupno;
	}
	public int getDrtitletab() {
		return drtitletab;
	}
	public void setDrtitletab(int drtitletab) {
		this.drtitletab = drtitletab;
	}
	public int getDrgroupsq() {
		return drgroupsq;
	}
	public void setDrgroupsq(int drgroupsq) {
		this.drgroupsq = drgroupsq;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getDrcontent() {
		return drcontent;
	}
	public void setDrcontent(String drcontent) {
		this.drcontent = drcontent;
	}
	public Date getDrdate() {
		return drdate;
	}
	public void setDrdate(Date drdate) {
		this.drdate = drdate;
	}
	public String getDrdateToChar() {
		return drdateToChar;
	}
	public void setDrdateToChar(String drdateToChar) {
		this.drdateToChar = drdateToChar;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	
	@Override
	public String toString() {
		return "DiaryReplyDto [drno=" + drno + ", dno=" + dno + ", drgroupno=" + drgroupno + ", drtitletab="
				+ drtitletab + ", drgroupsq=" + drgroupsq + ", mno=" + mno + ", drcontent=" + drcontent + ", drdate="
				+ drdate + ", drdateToChar=" + drdateToChar + ", mnick=" + mnick + "]";
	}
	
	
	
	

}
