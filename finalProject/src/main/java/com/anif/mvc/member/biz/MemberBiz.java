package com.anif.mvc.member.biz;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberBiz {
	
	
	public int signUp(MemberDto dto);
	
	
	public MemberDto login(MemberDto dto);

}
