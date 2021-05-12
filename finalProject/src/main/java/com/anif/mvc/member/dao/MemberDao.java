package com.anif.mvc.member.dao;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberDao {
	
	
	
	String NAMESPACE = "member.";
	
	
	public int signUp(MemberDto dto);
	
	public int signUps(MemberDto dto);
	
	
	public int idChk(MemberDto dto);
	
	public MemberDto login(MemberDto dto);
	
	
	public boolean pwChk(String mId,  String mPw);
	
	
	
	

}
