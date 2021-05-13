package com.anif.mvc.diary.dto;

public class LikeTableDto {
	
	private int likeno; 	//좋아요 일련번호 (PK)
	private int dno;		//일기 번호 (해당 글)
	private int mno; 		//회원 번호 (좋아요 누른 회원)
	private String likeyn;	//좋아요 여부 (Y/N)
	
	public LikeTableDto() {
		super();
	}
	public LikeTableDto(int likeno, int dno, int mno, String likeyn) {
		super();
		this.likeno = likeno;
		this.dno = dno;
		this.mno = mno;
		this.likeyn = likeyn;
	}
	
	public int getLikeno() {
		return likeno;
	}
	public void setLikeno(int likeno) {
		this.likeno = likeno;
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
	public String getLikeyn() {
		return likeyn;
	}
	public void setLikeyn(String likeyn) {
		this.likeyn = likeyn;
	}
	
	@Override
	public String toString() {
		return "LikeTableDto [likeno=" + likeno + ", dno=" + dno + ", mno=" + mno + ", likeyn=" + likeyn + "]";
	}
	
	

}
