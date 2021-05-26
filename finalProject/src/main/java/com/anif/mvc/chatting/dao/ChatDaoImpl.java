package com.anif.mvc.chatting.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.chatting.dto.ChatRoomDto;
import com.anif.mvc.chatting.dto.MessageDto;

@Repository
public class ChatDaoImpl implements ChatDao{

	@Autowired
	private SqlSession session;

	private static String namespace = "chat.";

	
	
	@Override
	public void createRoom(ChatRoomDto vo) throws Exception {

		session.insert(namespace+"createRoom" , vo);
	}



	@Override
	public ChatRoomDto isRoom(ChatRoomDto vo) throws Exception {
		
		ChatRoomDto roomvo = null;
		roomvo = session.selectOne(namespace+"isRoom", vo);
		System.out.println("ss");
		System.out.println(roomvo);
		
		return roomvo;
	}



//	@Override
//	public void insertMessage(MessageDto vo) throws Exception {
//
//		
//		session.insert(namespace+".insertMessage" , vo);
//	}
//
//
//
////	@Override
////	public String getPartner(ChatRoomDto vo) throws Exception {
////
////		
////		List<MessageDto> mvo = session.selectList(namespace+".getPartner", vo);
////		
////		return mvo.get(0).getUSER_user_id();
////	}
//
//
//
//	@Override
//	public String getProfile(String str) throws Exception {
//
//		return session.selectOne(namespace+".getProfile" , str);
//	}
//
//
//
//	@Override
//	public String getName(String str) throws Exception {
//
//		return session.selectOne(namespace+".getName" , str);
//	}
//
//
//
//	@Override
//	public List<MessageDto> getMessageList(String str) throws Exception {
//
//
//			return session.selectList(namespace+".getMessageList" , str);
//		
//		
//	}
//
//
//
//	@Override
//	public List<ChatRoomDto> getRoomList(String str) throws Exception {
//
//		return session.selectList(namespace+".getRoomList",str);
//	}
//
//
//
//	@Override
//	public List<ChatRoomDto> getRoomList2(String str) throws Exception {
//
//		return session.selectList(namespace+".getRoomList2" , str);
//	}
//
//
//
//	@Override
//	public MessageDto getRecentMessage(String str) throws Exception {
//
//		return session.selectOne(namespace+".getRecentMessage" , str);
//	}
//
//
//
//	@Override
//	public String getTutorId(String str) throws Exception {
//
//		return session.selectOne(namespace+".getTutorId" , str) ;
//	}
//
//
//
//	@Override
//	public List<ChatRoomDto> getRoomListTutor(String str) throws Exception {
//
//		return session.selectList(namespace+".getRoomListTutor" , str);
//	}
//
//
//
//	@Override
//	public void updateReadTime(int class_id, String user_id, String TUTOR_USER_user_id) throws Exception {
//
//		
//		HashMap<String, Object> map = new HashMap<String, Object> ();
//		
//		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
//		map.put("USER_user_id", user_id);
//		map.put("CLASS_class_id", class_id);
//		session.update(namespace+".updateReadTime" , map);
//	}
//
//
//
//	@Override
//	public int getUnReadCount(String TUTOR_USER_user_id, int class_id, String user_id) throws Exception {
//
//		HashMap<String, Object> map = new HashMap<String, Object> ();
//		
//		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
//		map.put("USER_user_id", user_id);
//		map.put("CLASS_class_id", class_id);
//		
//		
//		return session.selectOne(namespace+".getUnReadCount" , map);
//	}
//
//
//
//	@Override
//	public int getAllCount(String str) {
//
//		HashMap<String, Object> map = new HashMap<String, Object> ();
//		
//		map.put("USER_user_id", str);
//		map.put("TUTOR_USER_user_id", str);
//		if(session.selectOne(namespace+".getAllCount" ,map) ==null) {
//			return 0;
//		}else {
//			
//			return session.selectOne(namespace+".getAllCount" ,map);
//		}
//		
//	}
//
//
//
//	@Override
//	public void updateReadTimeTutor(int class_id , String user_id , String TUTOR_USER_user_id) throws Exception {
//		HashMap<String, Object> map = new HashMap<String, Object> ();
//		
//		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
//		map.put("USER_user_id", user_id);
//		map.put("CLASS_class_id", class_id);
//		session.update(namespace+".updateReadTimeTutor" , map);
//	}
//
//
//
//	@Override
//	public int getUnReadCountTutor(String TUTOR_USER_user_id, int class_id, String user_id) throws Exception {
//		HashMap<String, Object> map = new HashMap<String, Object> ();
//		
//		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
//		map.put("USER_user_id", user_id);
//		map.put("CLASS_class_id", class_id);
//		
//		
//		return session.selectOne(namespace+".getUnReadCountTutor" , map);
//	}


}
