package com.anif.mvc.member.biz;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberBiz {
	
	
	public int signUp(MemberDto dto);
	
	public int signUps(MemberDto dto);
	
	public int idChk(MemberDto dto);
	
	public MemberDto login(MemberDto dto);
	
	public MemberDto pwChk(int mNo);


}
