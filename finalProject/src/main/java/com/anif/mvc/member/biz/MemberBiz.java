package com.anif.mvc.member.biz;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberBiz {
	
	
	public int signUp(MemberDto dto);
	
	public int signUps(MemberDto dto);
	
	public int idChk(String mId);
	
	public MemberDto login(MemberDto dto);

}
