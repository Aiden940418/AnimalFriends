package com.anif.mvc.member.dto;

public class MemberDto {
	


	private int mNo; //member seq(name: MNO)
	private String mRole; //회원분류 
	private String mJoinYn; //회원가입여부 
	private String mId; //아이디 
	private String mPw; //비밀번호 
	private String mAddr1; //우편번호 
	private String mAddr2; //기본주소 
	private String mAddr3; //상세주소 
	private String mName; //회원이름 
	private String mNick; //회원닉네임 
	private String mPhone;
	private String sBisNum; //보호소회원사업자번호 
	private String sSellNum; //보호소
	
	
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public MemberDto(int mNo, String mRole, String mJoinYn, String mId, String mPw, String mAddr1, String mAddr2,
			String mAddr3, String mName, String mNick, String mPhone, String sBisNum, String sSellNum) {
		super();
		this.mNo = mNo;
		this.mRole = mRole;
		this.mJoinYn = mJoinYn;
		this.mId = mId;
		this.mPw = mPw;
		this.mAddr1 = mAddr1;
		this.mAddr2 = mAddr2;
		this.mAddr3 = mAddr3;
		this.mName = mName;
		this.mNick = mNick;
		this.mPhone = mPhone;
		this.sBisNum = sBisNum;
		this.sSellNum = sSellNum;
	}



	public int getmNo() {
		return mNo;
	}



	public void setmNo(int mNo) {
		this.mNo = mNo;
	}



	public String getmRole() {
		return mRole;
	}



	public void setmRole(String mRole) {
		this.mRole = mRole;
	}



	public String getmJoinYn() {
		return mJoinYn;
	}



	public void setmJoinYn(String mJoinYn) {
		this.mJoinYn = mJoinYn;
	}



	public String getmId() {
		return mId;
	}



	public void setmId(String mId) {
		this.mId = mId;
	}



	public String getmPw() {
		return mPw;
	}



	public void setmPw(String mPw) {
		this.mPw = mPw;
	}



	public String getmAddr1() {
		return mAddr1;
	}



	public void setmAddr1(String mAddr1) {
		this.mAddr1 = mAddr1;
	}



	public String getmAddr2() {
		return mAddr2;
	}



	public void setmAddr2(String mAddr2) {
		this.mAddr2 = mAddr2;
	}



	public String getmAddr3() {
		return mAddr3;
	}



	public void setmAddr3(String mAddr3) {
		this.mAddr3 = mAddr3;
	}



	public String getmName() {
		return mName;
	}



	public void setmName(String mName) {
		this.mName = mName;
	}



	public String getmNick() {
		return mNick;
	}



	public void setmNick(String mNick) {
		this.mNick = mNick;
	}



	public String getmPhone() {
		return mPhone;
	}



	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}



	public String getsBisNum() {
		return sBisNum;
	}



	public void setsBisNum(String sBisNum) {
		this.sBisNum = sBisNum;
	}



	public String getsSellNum() {
		return sSellNum;
	}



	public void setsSellNum(String sSellNum) {
		this.sSellNum = sSellNum;
	}



	@Override
	public String toString() {
		return "MemberDto [mNo=" + mNo + ", mRole=" + mRole + ", mJoinYn=" + mJoinYn + ", mId=" + mId + ", mPw=" + mPw
				+ ", mAddr1=" + mAddr1 + ", mAddr2=" + mAddr2 + ", mAddr3=" + mAddr3 + ", mName=" + mName + ", mNick="
				+ mNick + ", mPhone=" + mPhone + ", sBisNum=" + sBisNum + ", sSellNum=" + sSellNum + "]";
	}
	
	
	


	

}
