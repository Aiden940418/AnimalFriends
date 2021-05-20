package com.anif.mvc.member.dao;

import java.util.List;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberDao {
	
	
	
	String NAMESPACE = "member.";
	
	
	public int signUp(MemberDto dto);
	
	public int signUpSmember(MemberDto dto);
	
	
	public int idChk(MemberDto dto);
	
	public MemberDto login(MemberDto dto);
	
	
	public boolean pwChk(String mId,  String mPw);
	
	public int memberUpdate(MemberDto dto);

	public List<MemberDto> userList(MemberDto dto);
	
	
	

}
