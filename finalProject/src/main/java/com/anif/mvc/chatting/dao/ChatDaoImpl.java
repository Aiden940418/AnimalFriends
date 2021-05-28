package com.anif.mvc.chatting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.chatting.dto.ChatRoomDto;
import com.anif.mvc.chatting.dto.MessageDto;
import com.anif.mvc.member.biz.MemberBiz;
import com.anif.mvc.member.dto.MemberDto;

@Repository
public class ChatDaoImpl implements ChatDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	 private MemberBiz memberBiz;

	private static String namespace = "chat.";

	
	
	@Override
	public void createRoom(ChatRoomDto chatroomDto) throws Exception {
		
		//chatroomDto에 chatroomid, readermno, writermno만 들어간 상태
		
		//각각의 mno로 MemberDto를 가져와서
		MemberDto requesterDto = memberBiz.selectOneMember(chatroomDto.getChatRequesterNo());
		MemberDto responsorDto = memberBiz.selectOneMember(chatroomDto.getChatResponsorNo());
		
		//비어있는 chatroomDto의 rederMnick, writerMnick에 set
		chatroomDto.setChatRequesterMnick(requesterDto.getmNick());
		chatroomDto.setChatResponsorMnick(responsorDto.getmNick());
		
		//다 채워진 chatroomDto로 DB에 chatroom 생성
		try {
			sqlSession.insert(namespace+"createRoom" , chatroomDto);
		} catch (Exception e) {
			System.out.println("[error] : INSERT CHATROOM");
			e.printStackTrace();
		}
		
		
	}



	@Override
	public ChatRoomDto isRoom(ChatRoomDto vo) throws Exception {
		
		ChatRoomDto roomvo = null;
		roomvo = sqlSession.selectOne(namespace+"isRoom", vo);
		System.out.println("ss");
		System.out.println(roomvo);
		
		return roomvo;
	}



	@Override
	public List<ChatRoomDto> selectChatroom(int mNo) {
		
		List<ChatRoomDto> roomDtoList = null;
		
		System.out.println("@@@@@@@@@@@@@@@ "+mNo);
		
		try {
			roomDtoList = sqlSession.selectList(namespace+"selectChatroomList", mNo);
		} catch (Exception e) {
			System.out.println("[error] : ChatroomList select list");
			e.printStackTrace();
		}
		System.out.println("@@@@@@@@@ roomDtoList : "+roomDtoList.toString());
		return roomDtoList;
	}



	@Override
	public int insertMessage(MessageDto mDto) {
		int res = 0;
		
		System.out.println("DB에 넣을 메세지: "+mDto);
		try {
			res = sqlSession.insert(namespace+"insertMsg", mDto);
		} catch (Exception e) {
			System.out.println("[error] : INSERT Message");
			e.printStackTrace();
		}
		
		return res;
	}



	@Override
	public List<MessageDto> selectPrevMessage(int chatroomNo) {
		List<MessageDto> msgList = null;
		
		try {
			msgList = sqlSession.selectList(namespace+"selectPrevMsg", chatroomNo);
		} catch (Exception e) {
			System.out.println("[error] : SELECT Previous Message");
			e.printStackTrace();
		}
		
		return msgList;
	}


	@Override
	public String selectRecentMsg(int roomNumber) {
		List<MessageDto> list = null;
		String recentMsg = "";
		
		try {
			list = sqlSession.selectList(namespace + "selectRecentMsg", roomNumber);
			recentMsg = list.get(0).getMsgContent();
			
		} catch (Exception e) {
			System.out.println("[error] : SELECT selectRecentMsg");
			e.printStackTrace();
		}
		
		return recentMsg;
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
