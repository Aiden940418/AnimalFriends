package com.anif.mvc.member.biz;

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
	public int idChk(String mId) {

		return dao.idChk(mId);
	}

}
