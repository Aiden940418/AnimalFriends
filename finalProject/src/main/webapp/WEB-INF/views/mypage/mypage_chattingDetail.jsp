<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- header -->
<%@ include file="../includes/header.jsp" %>
<!-- leftMenuBar -->
<%@ include file="/WEB-INF/views/includes/mypage_leftMenuBar.jsp"%>

<!-- 웹소켓 사용 관련 코드 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>


<script type="text/javascript">

	var webSocket = {
		init: function(param) {
			this._url = param.url;
			this._initSocket();
		},
		sendChat: function() {
			var msg = $('#message').val();
			if(msg != ""){
				var message = {};
			  	message.msgSenderNo = '${login.mNo}'
				message.msgContent = $("#message").val()
			  	message.chatroomId = '${chatRoomNo}'
			  	message.senderMnick = '${login.mNick}'
			  	message.writerMno = '${writerMno}'
			  	message.readerMno = '${readerMno}'
			  }
			
			this._sendMessage(JSON.stringify(message));
			$('#message').val('');
			
		},
		receiveMessage: function(str) {
			var msg = JSON.parse(str);
			
			//현재 채팅방의 참여자일 때만 append
			//(메시지 보낸 사람이 reader고, 메시지 받는 사람이 writer) 혹은 (메시지 보낸 사람이 writer고, 메시지 받는 사람이 writer)
			//	= 메시지를 주고받는 사람이 정확하다면 append
			if(		 (msg.msgSenderNo == '${readerMno}' && msg.msgReceiverNo == '${writerMno}') 
													||
					 (msg.msgReceiverNo == '${writerMno}' && msg.msgSenderNo == '${readerMno}') ) {
				
				console.log(msg);
				$('#divChatData').append('<div>' + msg.senderMnick + " : " + msg.msgContent + '</div>');
				
			}
				
			
		},
		closeMessage: function(str) {
			$('#divChatData').append('<div>' + '연결 끊김 : ' + str + '</div>');
		},
		disconnect: function() {
			this._socket.close();
		},
		_initSocket: function() {
			this._socket = new SockJS(this._url);
			this._socket.onmessage = function(evt) {
				webSocket.receiveMessage(evt.data);
			};
			this._socket.onclose = function(evt) {
				webSocket.closeMessage(evt.data);
			}
		},
		_sendMessage: function(str) {
			this._socket.send(str);
		}
	};


	$(document).ready(function() {
		webSocket.init({ url: '<c:url value="/chat" />' });	
	});
	
	
	
	
</script>


</head>
<body>

	
		
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		
		<!-- 1:1 채팅창 박스 영역 -->
		<div style="margin-left: 300px; margin-top: 70px;">
			<div class="alert alert-primary" style="width: 500px; height: 700px; color:black;">
				
				<!-- 상단영역(프로필, userName, nickName, 화상채팅) -->
				<div class="row">
					<div class="col" style="max-width: 80px;">
						<ion-icon name="person-circle-outline" style="font-size:70px;"></ion-icon>
					</div>
					<div class="col">
						userName<br>
						nickName
					</div>
					<!-- 화상채팅 아이콘 -->
					<div class="col" style="margin-left: 200px;">
						<a href="#">
							<ion-icon name="videocam-outline" style="font-size:50px; color:black;"></ion-icon>
						</a>
					</div>
				</div>
				
				<hr> <!-- 가로선 -->
				
				
				<!-- 채팅창 영역 -->
				<div style="width: 460px; height: 500px; border: 1px solid black;" >
					
					<div style="width: 400px; height: 400px; padding: 10px; border: solid 1px #e1e3e9;">
						<div id="divChatData"></div>
					</div>
					<div style="width: 390px; height: 10%; padding: 10px;">
						<input type="text" id="message" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" /> 
						<input type="button" id="btnSend" value="채팅 전송" onclick="webSocket.sendChat()" />
					</div>





				</div>
				
				
				<!-- 메세지 전송 입력 부분 -->
				<div style="position: absolute; bottom: 0px; width: 470px;">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="메세지를 입력해주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
						<button class="btn btn-outline-secondary" type="button" id="button-addon2"
						  		style="color: #fff; background-color: #6c757d; border-color: #6c757d;">전송</button>
					</div>
				</div>

			</div>

		</div>
		
		
		
		
		

	</div>
	
	
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

</body>
</html>