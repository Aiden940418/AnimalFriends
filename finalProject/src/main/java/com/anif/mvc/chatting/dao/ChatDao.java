package com.anif.mvc.chatting.dao;

import java.util.List;

import com.anif.mvc.chatting.dto.ChatRoomDto;
import com.anif.mvc.chatting.dto.MessageDto;


public interface ChatDao {

	public void createRoom(ChatRoomDto vo)throws Exception;
	public ChatRoomDto isRoom(ChatRoomDto vo)throws Exception;

	public List<ChatRoomDto> selectChatroom(int mNo);
	public int insertMessage(MessageDto mDto);
	public List<MessageDto> selectPrevMessage(int chatroomNo);
	
	public String selectRecentMsg(int roomNumber);
	
}
