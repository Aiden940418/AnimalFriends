package com.anif.mvc.member.biz;

import java.util.List;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberBiz {
	
	
	public int signUp(MemberDto dto);
	
	public int signUps(MemberDto dto);
	
	public int idChk(MemberDto dto);
	
	public MemberDto login(MemberDto dto);
	
	public boolean pwChk(String mId, String mPw);
	
	public int memberUpdate(MemberDto dto);

	public List<MemberDto> userList(MemberDto dto);

	





}
