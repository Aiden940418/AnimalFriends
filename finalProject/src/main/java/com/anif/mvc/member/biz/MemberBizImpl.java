package com.anif.mvc.member.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.member.dao.MemberDao;
import com.anif.mvc.member.dto.MemberDto;


@Service
public class MemberBizImpl implements MemberBiz {

	
	@Autowired
	private MemberDao dao;
	
	@Override
	public int signUp(MemberDto dto) {
		return dao.signUp(dto);

	}

	@Override
	public MemberDto login(MemberDto dto) {
		
		return dao.login(dto);
	}

	@Override
	public int signUps(MemberDto dto) {


		return dao.signUps(dto);
	}


	@Override
	public int idChk(MemberDto dto) {
		int result = dao.idChk(dto);
		return result;
	}

	@Override
	public boolean pwChk(String mId, String mPw) {

		
		return dao.pwChk(mId, mPw);
	}

	@Override
	public int memberUpdate(MemberDto dto) {
		return dao.memberUpdate(dto);
	}

	@Override
	public List<MemberDto> userList(MemberDto dto) {
		return dao.userList(dto);
	}

}
