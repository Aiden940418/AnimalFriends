package com.anif.mvc.chatting.dto;

public class ChatRoomDto {
	
	private int chatroomNo;				//채팅방 번호 (PK)
	private int chatRequesterNo;		//1:1 채팅 요청자
	private int chatResponsorNo;		//1:1 채팅 수신자
	private String chatRequesterMnick;	//1:1 채팅 요청자 닉네임
	private String chatResponsorMnick;	//1:1 채팅 수신자 닉네임
	
	
	public ChatRoomDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChatRoomDto(int chatroomNo, int chatRequesterNo, int chatResponsorNo, String chatRequesterMnick,
			String chatResponsorMnick) {
		super();
		this.chatroomNo = chatroomNo;
		this.chatRequesterNo = chatRequesterNo;
		this.chatResponsorNo = chatResponsorNo;
		this.chatRequesterMnick = chatRequesterMnick;
		this.chatResponsorMnick = chatResponsorMnick;
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
		return "ChatRoomDto [chatroomNo=" + chatroomNo + ", chatRequesterNo=" + chatRequesterNo + ", chatResponsorNo="
				+ chatResponsorNo + ", chatRequesterMnick=" + chatRequesterMnick + ", chatResponsorMnick="
				+ chatResponsorMnick + "]";
	}
	
}
