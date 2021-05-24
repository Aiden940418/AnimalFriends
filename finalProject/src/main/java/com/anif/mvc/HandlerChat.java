package com.anif.mvc;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

	
	
	@Component
	public class HandlerChat extends TextWebSocketHandler {

		private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

		// 클라이언트가 서버로 연결 처리
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {

			// 채팅방에 접속한 사용자 세션을 리스트에 저장
			sessionList.add(session);

			// 모든 세션에 채팅 전달
			for (int i = 0; i < sessionList.size(); i++) {
				WebSocketSession s = sessionList.get(i);
				s.sendMessage(new TextMessage(session.getId() + "님이 입장 했습니다."));
			}
		}

		// 클라이언트가 서버로 메세지 전송 처리
		@Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

			// 모든 세션에 채팅 전달
			for (int i = 0; i < sessionList.size(); i++) {
				WebSocketSession s = sessionList.get(i);
				s.sendMessage(new TextMessage(session.getId() + " : " + message.getPayload()));
			}
		}

		// 클라이언트가 연결을 끊음 처리
		@Override
		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

			// 채팅방에서 퇴장한 사용자 세션을 리스트에서 제거
			sessionList.remove(session);

			// 모든 세션에 채팅 전달
			for (int i = 0; i < sessionList.size(); i++) {
				WebSocketSession s = sessionList.get(i);
				s.sendMessage(new TextMessage(session.getId() + "님이 퇴장 했습니다."));
			}

		}
	}

