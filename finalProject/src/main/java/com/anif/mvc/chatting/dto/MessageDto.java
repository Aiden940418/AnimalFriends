package com.anif.mvc.chatting.dto;

import java.util.Date;

import com.google.gson.Gson;


public class MessageDto {

	private int msgNo;					//메시지 번호 (PK)
	private int msgSenderNo;			//메시지 보낸 사람
	private int msgReceiverNo;			//메시지 받는 사람
	private String msgContent;			//메시지 내용
	private Date msgSendtime;			//메시지 보낸 시간
	private int chatroomNo;				//채팅방 번호
	private int chatRequesterNo;		//1:1 채팅 요청자
	private int chatResponsorNo;		//1:1 채팅 수신자 (요청 받은 자)
	
	private String senderMnick;			//메세지 발신자 닉네임
	private String receiverMnick;		//메세지 수신자 닉네임
	private String chatRequesterMnick;	//1:1 채팅 요청자 닉네임
	private String chatResponsorMnick;	//1:1 채팅 수신자 닉네임
	
	
	public MessageDto() {
		super();
	}
	public MessageDto(int msgNo, int msgSenderNo, int msgReceiverNo, String msgContent, Date msgSendtime,
			int chatroomNo, int chatRequesterNo, int chatResponsorNo, String senderMnick, String receiverMnick,
			String chatRequesterMnick, String chatResponsorMnick) {
		super();
		this.msgNo = msgNo;
		this.msgSenderNo = msgSenderNo;
		this.msgReceiverNo = msgReceiverNo;
		this.msgContent = msgContent;
		this.msgSendtime = msgSendtime;
		this.chatroomNo = chatroomNo;
		this.chatRequesterNo = chatRequesterNo;
		this.chatResponsorNo = chatResponsorNo;
		this.senderMnick = senderMnick;
		this.receiverMnick = receiverMnick;
		this.chatRequesterMnick = chatRequesterMnick;
		this.chatResponsorMnick = chatResponsorMnick;
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
	public int getChatroomNo() {
		return chatroomNo;
	}
	public void setChatroomNo(int chatroomNo) {
		this.chatroomNo = chatroomNo;
	}
	public int getChatRequesterNo() {
		return chatRequesterNo;
	}
	public void setChatRequesterNo(int chatRequesterNo) {
		this.chatRequesterNo = chatRequesterNo;
	}
	public int getChatResponsorNo() {
		return chatResponsorNo;
	}
	public void setChatResponsorNo(int chatResponsorNo) {
		this.chatResponsorNo = chatResponsorNo;
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
	public String getChatRequesterMnick() {
		return chatRequesterMnick;
	}
	public void setChatRequesterMnick(String chatRequesterMnick) {
		this.chatRequesterMnick = chatRequesterMnick;
	}
	public String getChatResponsorMnick() {
		return chatResponsorMnick;
	}
	public void setChatResponsorMnick(String chatResponsorMnick) {
		this.chatResponsorMnick = chatResponsorMnick;
	}


	@Override
	public String toString() {
		return "MessageDto [msgNo=" + msgNo + ", msgSenderNo=" + msgSenderNo + ", msgReceiverNo=" + msgReceiverNo
				+ ", msgContent=" + msgContent + ", msgSendtime=" + msgSendtime + ", chatroomNo=" + chatroomNo
				+ ", chatRequesterNo=" + chatRequesterNo + ", chatResponsorNo=" + chatResponsorNo + ", senderMnick="
				+ senderMnick + ", receiverMnick=" + receiverMnick + ", chatRequesterMnick=" + chatRequesterMnick
				+ ", chatResponsorMnick=" + chatResponsorMnick + "]";
	}



	public static MessageDto convertMessage(String source) {
		MessageDto message = new MessageDto();
		Gson gson = new Gson();
		message = gson.fromJson(source,  MessageDto.class);
		return message;
	}
}
