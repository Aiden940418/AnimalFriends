package com.anif.mvc.notice;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.anif.mvc.MemberController;
import com.anif.mvc.member.dto.MemberDto;


public class handlerNotice extends TextWebSocketHandler {
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//로그인 한 전체
	List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();

	// 로그인중인 개별유저
	Map<Integer, WebSocketSession> users = new ConcurrentHashMap<Integer, WebSocketSession>();

	
	
	// 클라이언트가 서버로 연결시
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		int senderNo = 0;
		senderNo = getMemberNo(session); // 접속한 유저의 http세션을 조회하여 id를 얻는 함수
		
		if (senderNo != 0) { // 로그인 값이 있는 경우만
			log(senderNo + " 연결 됨");
			//users.put(senderId, session); // 로그인중 개별유저 저장
			users.put(senderNo, session);
		}
	}

	// 클라이언트가 Data 전송 시
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		//int senderNo = getMemberNo(session);
		// 특정 유저에게 보내기
		
		logger.info("=================== handleTextMessage 실행 !!" );
		
		String msg = message.getPayload();
		
		logger.info("=================== msg = "+msg );
		
		if(msg != null) {
			String[] strs = msg.split(",");
			log(strs.toString());
			
			if(strs != null && strs.length == 3) {
				
				logger.info("=================== 61번 줄 if 문 실행됨!");
				
				int targetMNo = Integer.parseInt(strs[0]); // 토스트 메세지를 받을 mno 지정 (문자열 형태로 넘어온 것을 정수형으로 변환)
				String content = strs[1];
				String url = strs[2];
				WebSocketSession targetSession = users.get(targetMNo);  // 메시지를 받을 세션 조회
				
				// 실시간 접속시, 만약 타겟 회원이 로그인 중이 아니면 sendMessage 알림 실행 안 됨
				if(targetSession!=null) {
					// ex: [&분의일] 신청이 들어왔습니다.
					TextMessage tmpMsg = new TextMessage("<a target='_blank' href='"+ url +"'>" + content + "</a>" );
					
					logger.info("============= tmp Msg 는 : "+tmpMsg);
					
					targetSession.sendMessage(tmpMsg);
				}
			}
		}
	}

	// 연결 해제될 때
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		int senderNo = 0;
		senderNo = getMemberNo(session);
		
		if (senderNo != 0) { // 로그인 값이 있는 경우만
			log(senderNo + " 연결 종료됨");
			users.remove(senderNo);
			sessions.remove(session);
		}
	}

	// 에러 발생시
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		log(session.getId() + " 익셉션 발생: " + exception.getMessage());

	}

	// 로그 메시지
	private void log(String logmsg) {
		System.out.println(new Date() + " : " + logmsg);
	}

	// 웹소켓에 id 가져오기
	// 접속한 유저의 http세션을 조회하여 id를 얻는 함수
	private int getMemberNo(WebSocketSession session) {
		//logger.info("==================="+session);
		
		Map<String, Object> httpSession = session.getAttributes();
		
		//logger.info("==================="+httpSession.toString());
		
		MemberDto loginDto = (MemberDto)httpSession.get("login"); // 세션에 저장된 m_id 기준 조회
		
		logger.info("==============="+loginDto.getmNo());
		
		return loginDto == null ? null : loginDto.getmNo();
	}

}
