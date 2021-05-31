package com.anif.mvc.chatting;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.anif.mvc.MemberController;
import com.anif.mvc.chatting.dao.ChatDao;
import com.anif.mvc.chatting.dto.ChatRoomDto;
import com.anif.mvc.chatting.dto.MessageDto;
import com.anif.mvc.member.dto.MemberDto;
import com.google.gson.Gson;

@Component
public class HandlerChat extends TextWebSocketHandler {

	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private ChatDao dao;
	
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	
	//웹소켓에 접속한 세션들 리스트
	private List<WebSocketSession> connectedUsers;  
	
	public HandlerChat() {
	      connectedUsers = new ArrayList<WebSocketSession>();
	   }
	
	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();
	

	
	// 클라이언트가 서버로 연결 처리
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		logger.info((session.getId() + " 연결 됨!!"));

		users.put(session.getId(), session);
		connectedUsers.add(session);
		
	}
	

	// 클라이언트가 서버로 메세지 전송 처리
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		//getPayload는 메세지에 담긴 텍스트값을 얻는 메소드.
		System.out.println(message.getPayload());

		Map<String, Object> map = null;

		MessageDto MsgDto = MessageDto.convertMessage(message.getPayload());

		
		System.out.println("1 : " + MsgDto.toString());
		

		ChatRoomDto roomDto = new ChatRoomDto();
		roomDto.setChatResponsorNo(MsgDto.getChatResponsorNo()); // 공고 올린 사람
		roomDto.setChatRequesterNo(MsgDto.getChatRequesterNo()); // 공고 보고 메세지 보낸 사람

		ChatRoomDto croom = null;
		if (MsgDto.getChatRequesterNo() != MsgDto.getChatResponsorNo()) {
			// 공고 올린 사람 != 보고 메세지 보낸 사람이라면
			System.out.println("a");

			if (dao.isRoom(roomDto) == null) {
				System.out.println("b");
				// 이미 만들어진 방이 없다면 방을 만들어준다
				dao.createRoom(roomDto);
				System.out.println("d");
				// 그리고 그 방을 가져온다
				croom = dao.isRoom(roomDto);

			} else {
				System.out.println("C");
				// 이미 만들어진 방이 있다면 그 방을 가져온다
				croom = dao.isRoom(roomDto);
			}
		} else {
			// 나만의 채팅방
			croom = dao.isRoom(roomDto);
		}
		
		MsgDto.setChatroomNo(croom.getChatroomNo());
		if (croom.getChatRequesterNo() == MsgDto.getMsgSenderNo()) {
			// 메시지 보낸 사람 = 공고를 읽은 사람이면 메시지 받는 사람 = 공고를 쓴 사람으로 설정
			MsgDto.setMsgReceiverNo(roomDto.getChatResponsorNo());
		} else {
			// 메시지 보낸 사람 = 공고를 쓴 사람이면 메시지 받는 사람 = 공고를 읽은 사람
			MsgDto.setMsgReceiverNo(roomDto.getChatRequesterNo());
		}
		
		
		dao.insertMessage(MsgDto);
		for (WebSocketSession websocketSession : connectedUsers) {
			map = websocketSession.getAttributes();
			MemberDto login = (MemberDto) map.get("login");
			
			
			Gson gson = new Gson();
			String msgJson = gson.toJson(MsgDto);
			websocketSession.sendMessage(new TextMessage(msgJson));
			
		}
		
	}

	
	// 클라이언트가 연결을 끊음 처리
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

		logger.info(session.getId() + " 연결 종료됨");
		connectedUsers.remove(session);
		users.remove(session.getId());

	}
	
}
