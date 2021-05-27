package com.anif.mvc.chatting.dto;

import java.util.Date;

import com.google.gson.Gson;


public class MessageDto {

	private int msgNo;					//메시지의 숫자
	private int msgSenderNo;			//메시지 보낸 사람
	private int msgReceiverNo;			//메시지 받는 사람
	private String msgContent;			//메시지 내용
	private Date msgSendtime;			//메시지 보낸 시간
	private Date msgReadTime;			//메시지 읽은 시간
	private int chatroomId;				//채팅방 id
	private int readerMno;				//입양공고 읽고 1:1채팅 건 사용자 mno
	private int writerMno;				//입양공고 올린 사용자 mno
	private String senderMnick;			//메세지 발신자 닉네임
	private String receiverMnick;		//메세지 수신자 닉네임
	private String readerMnick;			//입양공고 읽고 1:1채팅 건 사용자의 닉네임
	private String writerMnick;			//입양공고 올린 사용자의 닉네임
	
	public MessageDto() {
		super();
	}

	public MessageDto(int msgNo, int msgSenderNo, int msgReceiverNo, String msgContent, Date msgSendtime,
			Date msgReadTime, int chatroomId, int readerMno, int writerMno, String readerMnick, String writerMnick) {
		super();
		this.msgNo = msgNo;
		this.msgSenderNo = msgSenderNo;
		this.msgReceiverNo = msgReceiverNo;
		this.msgContent = msgContent;
		this.msgSendtime = msgSendtime;
		this.msgReadTime = msgReadTime;
		this.chatroomId = chatroomId;
		this.readerMno = readerMno;
		this.writerMno = writerMno;
		this.readerMnick = readerMnick;
		this.writerMnick = writerMnick;
	}

	public int getMsgNo() {
		return msgNo;
	}

	public void setMsgNo(int msgNo) {
		this.msgNo = msgNo;
	}

	public int getMsgSenderNo() {
		return msgSenderNo;
	}

	public void setMsgSenderNo(int msgSenderNo) {
		this.msgSenderNo = msgSenderNo;
	}

	public int getMsgReceiverNo() {
		return msgReceiverNo;
	}

	public void setMsgReceiverNo(int msgReceiverNo) {
		this.msgReceiverNo = msgReceiverNo;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public Date getMsgSendtime() {
		return msgSendtime;
	}

	public void setMsgSendtime(Date msgSendtime) {
		this.msgSendtime = msgSendtime;
	}

	public Date getMsgReadTime() {
		return msgReadTime;
	}

	public void setMsgReadTime(Date msgReadTime) {
		this.msgReadTime = msgReadTime;
	}

	public int getChatroomId() {
		return chatroomId;
	}

	public void setChatroomId(int chatroomId) {
		this.chatroomId = chatroomId;
	}

	public int getReaderMno() {
		return readerMno;
	}

	public void setReaderMno(int readerMno) {
		this.readerMno = readerMno;
	}

	public int getWriterMno() {
		return writerMno;
	}

	public void setWriterMno(int writerMno) {
		this.writerMno = writerMno;
	}

	public String getReaderMnick() {
		return readerMnick;
	}

	public void setReaderMnick(String readerMnick) {
		this.readerMnick = readerMnick;
	}

	public String getWriterMnick() {
		return writerMnick;
	}

	public void setWriterMnick(String writerMnick) {
		this.writerMnick = writerMnick;
	}
	

	public String getSenderMnick() {
		return senderMnick;
	}

	public void setSenderMnick(String senderMnick) {
		this.senderMnick = senderMnick;
	}

	public String getReceiverMnick() {
		return receiverMnick;
	}

	public void setReceiverMnick(String receiverMnick) {
		this.receiverMnick = receiverMnick;
	}

	
	
	@Override
	public String toString() {
		return "MessageDto [msgNo=" + msgNo + ", msgSenderNo=" + msgSenderNo + ", msgReceiverNo=" + msgReceiverNo
				+ ", msgContent=" + msgContent + ", msgSendtime=" + msgSendtime + ", msgReadTime=" + msgReadTime
				+ ", chatroomId=" + chatroomId + ", readerMno=" + readerMno + ", writerMno=" + writerMno
				+ ", senderMnick=" + senderMnick + ", receiverMnick=" + receiverMnick + ", readerMnick=" + readerMnick
				+ ", writerMnick=" + writerMnick + "]";
	}

	public static MessageDto convertMessage(String source) {
		MessageDto message = new MessageDto();
		Gson gson = new Gson();
		message = gson.fromJson(source,  MessageDto.class);
		return message;
	}
}
