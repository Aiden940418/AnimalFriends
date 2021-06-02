package com.anif.mvc.member.biz;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
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
	public int signUpSmember(MemberDto dto) {


		return dao.signUpSmember(dto);
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
	public List<MemberDto> userList() {
		return dao.userList();
	}

	@Override
	public List<MemberDto> memberList() {
		return dao.memberList();
	}
	
	@Override
	public List<MemberDto> iMemberList() {
		return dao.iMemberList();
	}

	@Override
	public List<MemberDto> sMemberList() {
		return dao.sMemberList();
	}

	@Override
	public List<MemberDto> qMemberList() {
		return dao.qMemberList();
	}

	@Override
	public void memberDelete(String mId) {
		dao.memberDelete(mId);
		
	}


	public MemberDto selectOneMember(int mNo) {
		return dao.selectOneMember(mNo);
	}

	@Override
	public void sendEmail(MemberDto dto, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; //구글 이용시 smtp.gmail.com
		String hostSMTPid = "guswjd7058@naver.com";
		String hostSMTPpwd = "1q2w3e4r!";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "admin@naver.com";
		String fromName = "Animal Friends";
		String subject = "";
		String msg = "";

		if(div.equals("findpw")) {
			subject = "Animal Friends 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += dto.getmId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += dto.getmPw() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = dto.getmEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587); //구글 이용시 465

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
	@Override
	public void findPw(HttpServletResponse response, MemberDto dto) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		MemberDto ck = dao.readMember(dto.getmId());
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(dao.idCheck(dto.getmId()) != 1) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(!dto.getmEmail().equals(ck.getmEmail())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			dto.setmPw(pw);
			// 비밀번호 변경
			dao.updatemPw(dto);
			// 비밀번호 변경 메일 발송
			sendEmail(dto, "findpw");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}
}