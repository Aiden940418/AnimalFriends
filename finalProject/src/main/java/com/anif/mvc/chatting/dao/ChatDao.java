package com.anif.mvc.chatting.dao;

import java.util.List;

import com.anif.mvc.chatting.dto.ChatRoomDto;
import com.anif.mvc.chatting.dto.MessageDto;


public interface ChatDao {

	public void createRoom(ChatRoomDto vo)throws Exception;
	public ChatRoomDto isRoom(ChatRoomDto vo)throws Exception;
//	public void insertMessage(MessageDto vo)throws Exception;
//	public String getPartner(ChatRoomDto vo)throws Exception;
//	public String getProfile(String str)throws Exception;
//	public String getName(String str)throws Exception;
//	public List<MessageDto> getMessageList(String str)throws Exception;
//	public List<ChatRoomDto> getRoomList(String str)throws Exception;
//	public List<ChatRoomDto> getRoomList2(String str)throws Exception;
//	public MessageDto getRecentMessage(String str)throws Exception;
//	//public String isGetMessageList(String str)throws Exception;
//	
//	public String getTutorId(String str)throws Exception;
//	public List<ChatRoomDto> getRoomListTutor(String str)throws Exception;
//	public void updateReadTime(int class_id , String user_id , String TUTOR_USER_user_id)throws Exception;
//	public void updateReadTimeTutor(int class_id , String user_id , String TUTOR_USER_user_id)throws Exception;
//	
//	public int getUnReadCount(String TUTOR_USER_user_id, int class_id, String user_id)throws Exception;
//	public int getUnReadCountTutor(String TUTOR_USER_user_id, int class_id, String user_id)throws Exception;
//	
//	public int getAllCount(String str);
	public List<ChatRoomDto> selectChatroom(int mNo);
	
}
