package com.anif.mvc.biz;

import com.anif.mvc.dto.MemberDto;

public interface MemberBiz {
	
	
	public int signUp(MemberDto dto);
	
	
	public MemberDto login(MemberDto dto);

}
