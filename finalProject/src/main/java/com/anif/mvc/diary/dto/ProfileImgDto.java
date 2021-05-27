package com.anif.mvc.diary.dto;

public class ProfileImgDto {
	
	
	private int mno;				//회원번호
	private String profileImg;		//나의 입양일기에 프로필사진 이미지(경로명)
	private String profileThumbImg;	//나의 입양일기에 프로필사진 썸네일 이미지(경로명)
	
	
	public ProfileImgDto() {
		super();
	}

	public ProfileImgDto(int mno, String profileImg, String profileThumbImg) {
		super();
		this.mno = mno;
		this.profileImg = profileImg;
		this.profileThumbImg = profileThumbImg;
	}

	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
	}


	public String getProfileImg() {
		return profileImg;
	}


	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}


	public String getProfileThumbImg() {
		return profileThumbImg;
	}


	public void setProfileThumbImg(String profileThumbImg) {
		this.profileThumbImg = profileThumbImg;
	}

	@Override
	public String toString() {
		return "ProfileImgDto [mno=" + mno + ", profileImg=" + profileImg + ", profileThumbImg=" + profileThumbImg+ "]";
	}

	
}
