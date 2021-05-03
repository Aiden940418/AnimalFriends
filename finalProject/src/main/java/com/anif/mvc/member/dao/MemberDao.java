package com.anif.mvc.member.dao;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberDao {
	
	
	
	String NAMESPACE = "member.";
	
	
	public int signUp(MemberDto dto);
	
	public int signUps(MemberDto dto);
	
	
//	public int idChk(String mId);
	
	public MemberDto login(MemberDto dto);
	
	
	
	

}
