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

	
	//채팅방 생성
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


	//채팅방이 존재하는 지 확인해서 존재하면 반환
	@Override
	public ChatRoomDto isRoom(ChatRoomDto vo) throws Exception {
		
		ChatRoomDto roomvo = null;
		roomvo = sqlSession.selectOne(namespace+"isRoom", vo);
		
		return roomvo;
	}


	//채팅방 목록 조회 반환
	@Override
	public List<ChatRoomDto> selectChatroom(int mNo) {
		
		List<ChatRoomDto> roomDtoList = null;
		
		try {
			roomDtoList = sqlSession.selectList(namespace+"selectChatroomList", mNo);
		} catch (Exception e) {
			System.out.println("[error] : ChatroomList select list");
			e.printStackTrace();
		}
		
		return roomDtoList;
	}


	//채팅 메세지 DB에 insert
	@Override
	public int insertMessage(MessageDto mDto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(namespace+"insertMsg", mDto);
		} catch (Exception e) {
			System.out.println("[error] : INSERT Message");
			e.printStackTrace();
		}
		
		return res;
	}


	//이전 채팅 기록 조회해서 반환
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

	
	//가장 최근 메세지 조회해서 반환
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


}
