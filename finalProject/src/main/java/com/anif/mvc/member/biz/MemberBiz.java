package com.anif.mvc.member.biz;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.anif.mvc.member.dto.MemberDto;

public interface MemberBiz {
	
	
	public int signUp(MemberDto dto);
	
	public int signUpSmember(MemberDto dto);
	
	public int idChk(MemberDto dto);
	
	public MemberDto login(MemberDto dto);
	
	public boolean pwChk(String mId, String mPw);
	
	public int memberUpdate(MemberDto dto);

	public List<MemberDto> userList();

	public List<MemberDto> memberList();

	public List<MemberDto> iMemberList();
	
	public List<MemberDto> sMemberList();

	public List<MemberDto> qMemberList();
	
	public void memberDelete(String mId);
	
	public MemberDto selectOneMember(int mNo);

	
	//이메일발송
	public void sendEmail(MemberDto dto, String div) throws Exception;

	//비밀번호찾기
	public void findPw(HttpServletResponse response, MemberDto dto) throws Exception;




}
