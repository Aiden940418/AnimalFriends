package com.anif.mvc.chatting.dto;

public class ChatRoomDto {
	private int chatroomId;			//채팅방 id
	private int readerMno;			//입양공고 읽고 1:1채팅 건 사용자
	private int writerMno;			//입양공고 올린 사용자
	private String readerMnick;			//입양공고 읽고 1:1채팅 건 사용자의 닉네임
	private String writerMnick;			//입양공고 올린 사용자의 닉네임
	
	public ChatRoomDto() {
		super();
	}
	public ChatRoomDto(int chatroomId, int readerMno, int writerMno, String readerMnick, String writerMnick) {
		super();
		this.chatroomId = chatroomId;
		this.readerMno = readerMno;
		this.writerMno = writerMno;
		this.readerMnick = readerMnick;
		this.writerMnick = writerMnick;
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
	@Override
	public String toString() {
		return "ChatRoomDto [chatroomId=" + chatroomId + ", readerMno=" + readerMno + ", writerMno=" + writerMno
				+ ", readerMnick=" + readerMnick + ", writerMnick=" + writerMnick + "]";
	}
}
