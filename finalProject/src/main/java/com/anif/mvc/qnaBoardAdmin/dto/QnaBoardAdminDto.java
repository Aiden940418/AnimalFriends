package com.anif.mvc.qnaBoardAdmin.dto;

import java.util.Date;

public class QnaBoardAdminDto {

	private int qno;			//문의게시판 글 번호
	private int qgroupno;		//문의 글 그룹 번호
	private int qgroupsq;		//글 그룹 시퀀스
	private int qtitletab;  	//제목 공백
	private String qctgy; 		//문의 글 카테고리(입양공고, 입양일기, 굿즈, 사이트 이용 문의)
	private String qtitle;		//문의 글 제목
	private String qcontent;	//문의 글 내용
	private int mno;			//작성자 (회원 번호)
	private Date qdate;			//작성일 
	private String qdateToChar; //작성일 포맷 변환 (select 시에만 사용될듯)
	private String mnick;       //작성자 닉네임
	
	
	public QnaBoardAdminDto() {
		super();
	}

	public QnaBoardAdminDto(int qno, int qgroupno, int qgroupsq, int qtitletab, String qctgy, String qtitle, String qcontent,
			int mno, Date qdate, String qdateToChar, String mnick) {
		super();
		this.qno = qno;
		this.qgroupno = qgroupno;
		this.qgroupsq = qgroupsq;
		this.qtitletab = qtitletab;
		this.qctgy = qctgy;
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.mno = mno;
		this.qdate = qdate;
		this.qdateToChar = qdateToChar;
		this.mnick = mnick;
	}


	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public int getQgroupno() {
		return qgroupno;
	}
	public void setQgroupno(int qgroupno) {
		this.qgroupno = qgroupno;
	}
	public int getQgroupsq() {
		return qgroupsq;
	}
	public void setQgroupsq(int qgroupsq) {
		this.qgroupsq = qgroupsq;
	}
	public int getQtitletab() {
		return qtitletab;
	}
	public void setQtitletab(int qtitletab) {
		this.qtitletab = qtitletab;
	}
	public String getQctgy() {
		return qctgy;
	}
	public void setQctgy(String qctgy) {
		this.qctgy = qctgy;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public Date getQdate() {
		return qdate;
	}
	public void setQdate(Date qdate) {
		this.qdate = qdate;
	}
	public String getQdateToChar() {
		return qdateToChar;
	}
	public void setQdateToChar(String qdateToChar) {
		this.qdateToChar = qdateToChar;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}

	
	
	@Override
	public String toString() {
		return "QnaBoardDto [qno=" + qno + ", qgroupno=" + qgroupno + ", qgroupsq=" + qgroupsq + ", qtitletab="
				+ qtitletab + ", qctgy=" + qctgy + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", mno=" + mno
				+ ", qdate=" + qdate + ", qdateToChar=" + qdateToChar + ", mnick=" + mnick + "]";
	}

	

}
