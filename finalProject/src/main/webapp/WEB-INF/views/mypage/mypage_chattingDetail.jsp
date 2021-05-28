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
			  	message.chatroomNo = '${chatroomDto.chatroomNo}'
			  	message.senderMnick = '${login.mNick}'
			  	message.chatRequesterNo = '${chatroomDto.chatRequesterNo}'
			  	message.chatResponsorNo = '${chatroomDto.chatResponsorNo}'
			  	
			  	//채팅 메세지 보낸 시간 찍기
			  	var today = new Date();   
				var year = today.getFullYear(); // 년
				var month = today.getMonth() + 1;  // 월
				var date = today.getDate();  // 일
				var hours = today.getHours(); // 시
				var minutes = today.getMinutes();  // 분
				var seconds = today.getSeconds();  // 초
				var msgSendtimeScript = month + "월" + date + "일 " + hours + ":" + minutes + ":" + seconds;
			  	message.msgSendtimeScript = msgSendtimeScript  //만든 시간 메세지 json객체에 넣어주기
			  }else{
				return false;	  
			  }
			
			
			this._sendMessage(JSON.stringify(message));
			$('#message').val('');
			
			
		},
		receiveMessage: function(str) {
			var msg = JSON.parse(str);
			//현재 채팅방의 참여자일 때만 append
			//(메시지 보낸 사람이 reader고, 메시지 받는 사람이 writer) 혹은 (메시지 보낸 사람이 writer고, 메시지 받는 사람이 writer)
			//	= 메시지를 주고받는 사람이 방에 저장된 값들과 일치하다면 append
			// 결국 roomDto에 담긴 reader, writer와 msgDto에 담긴 sender, receiver의 정보가 잘 짝지어 질 때만 append되는 것  
			if(		 (msg.msgSenderNo == '${chatroomDto.chatRequesterNo}' && msg.msgReceiverNo == '${chatroomDto.chatResponsorNo}') 
													||
					 (msg.msgReceiverNo == '${chatroomDto.chatRequesterNo}' && msg.msgSenderNo == '${chatroomDto.chatResponsorNo}') ) {
				
				console.log(msg);
				
				//채팅창에 메세지 append
				$('#divChatData').append('<div>' + msg.senderMnick + " : " + msg.msgContent + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
											+ msg.msgSendtimeScript + '</div>');
				
				//채팅창 스크롤 밑으로 내리기
				scrollDown();
				
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
		
		
		//페이지 처음 로드 시 채팅창의 스크롤바 맨 밑으로 내리기
		$("#chatDiv").scrollTop($("#chatDiv")[0].scrollHeight);
	});
	
	
	//채팅창의 스크롤바 맨 밑으로 내리기
	function scrollDown(){
		$("#chatDiv").scrollTop($("#chatDiv")[0].scrollHeight);
	}
	
	
	
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
						채팅 참여자 <br>[${chatroomDto.chatRequesterMnick }, ${chatroomDto.chatResponsorMnick }]
					</div>
					<!-- 화상채팅 아이콘 -->
					<div class="col" style="max-width: 100px;">
						<a href="#">
							<ion-icon name="videocam-outline" style="font-size:50px; color:black;"></ion-icon>
						</a>
					</div>
				</div>
				
				<hr> <!-- 가로선 -->
				
				
				<!-- 채팅창 영역 -->
				<div id="chatDiv" style="width: 460px; height: 500px; border: 1px solid black; overflow-y: scroll;" >
					
					<div style="width: 400px; height: 400px; padding: 10px; border: solid 1px #e1e3e9; ">
						<div id="divChatData" >
							<c:forEach items="${prevMsg }" var="msgDto">
								<div> ${msgDto.senderMnick } : ${msgDto.msgContent } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${msgDto.msgSendtimeScript }</div>
							</c:forEach> 	
						
						</div>
					</div>



				</div>
				
				
				<!-- 메세지 전송 입력 부분 -->
				<div style="position: absolute; bottom: 0px; width: 470px;">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="메세지를 입력해주세요" id="message" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" /> 
						<input type="button" class="btn btn-outline-secondary" id="btnSend" value="전송" onclick="webSocket.sendChat()" style="color: #fff; background-color: #6c757d; border-color: #6c757d;" />
						
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