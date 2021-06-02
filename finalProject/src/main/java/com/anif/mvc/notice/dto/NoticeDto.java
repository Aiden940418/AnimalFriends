package com.anif.mvc.notice.dto;

import java.util.Date;

public class NoticeDto {
	
	private int noticeNo; 		 		// 알림 메세지 고유번호 (pk)
	private int noticeSenderNo;		 	// 알림 발신자 회원번호
	private int noticeReceiverNo; 		// 알림 수신자 회원번호
	private String noticeContent; 		// 알림 내용
	private Date noticeTime;  			// 알림 보낸 시간(SYSDATE 형태, 정렬을 위해서 있어야 한다)
	private String noticeTimeScript; 	// 알림 보낸 시간 (string 형태로, 자바스크립트에서 찍은 시간,
										//  화면 단에서 통신 시에 date 타입으로 변환하기 까다로워서 이렇게)
	
	
	public NoticeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeDto(int noticeNo, int noticeSenderNo, int noticeReceiverNo, String noticeContent, Date noticeTime,
			String noticeTimeScript) {
		super();
		this.noticeNo = noticeNo;
		this.noticeSenderNo = noticeSenderNo;
		this.noticeReceiverNo = noticeReceiverNo;
		this.noticeContent = noticeContent;
		this.noticeTime = noticeTime;
		this.noticeTimeScript = noticeTimeScript;
	}
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public int getNoticeSenderNo() {
		return noticeSenderNo;
	}
	public void setNoticeSenderNo(int noticeSenderNo) {
		this.noticeSenderNo = noticeSenderNo;
	}
	public int getNoticeReceiverNo() {
		return noticeReceiverNo;
	}
	public void setNoticeReceiverNo(int noticeReceiverNo) {
		this.noticeReceiverNo = noticeReceiverNo;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getNoticeTime() {
		return noticeTime;
	}
	public void setNoticeTime(Date noticeTime) {
		this.noticeTime = noticeTime;
	}
	public String getNoticeTimeScript() {
		return noticeTimeScript;
	}
	public void setNoticeTimeScript(String noticeTimeScript) {
		this.noticeTimeScript = noticeTimeScript;
	}
	
	@Override
	public String toString() {
		return "NoticeDto [noticeNo=" + noticeNo + ", noticeSenderNo=" + noticeSenderNo + ", noticeReceiverNo="
				+ noticeReceiverNo + ", noticeContent=" + noticeContent + ", noticeTime=" + noticeTime
				+ ", noticeTimeScript=" + noticeTimeScript + "]";
	}
	
	
	
}
