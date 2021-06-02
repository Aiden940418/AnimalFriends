<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- header -->
<%@ include file="../includes/header_R.jsp"%>

<!-- 아이콘 사용 위한 코드 -->
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>

 <title>1:1 채팅방</title>
 
 <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>

<!-- 웹소켓 사용 관련 코드 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');


	div {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
	
</style>

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
			var loginMno = ${login.mNo};
			//현재 채팅방의 참여자일 때만 append
			//(메시지 보낸 사람이 reader고, 메시지 받는 사람이 writer) 혹은 (메시지 보낸 사람이 writer고, 메시지 받는 사람이 writer)
			//	= 메시지를 주고받는 사람이 방에 저장된 값들과 일치하다면 append
			// 결국 roomDto에 담긴 reader, writer와 msgDto에 담긴 sender, receiver의 정보가 잘 짝지어 질 때만 append되는 것  
			if(		 (msg.msgSenderNo == '${chatroomDto.chatRequesterNo}' && msg.msgReceiverNo == '${chatroomDto.chatResponsorNo}') 
													||
					 (msg.msgReceiverNo == '${chatroomDto.chatRequesterNo}' && msg.msgSenderNo == '${chatroomDto.chatResponsorNo}') ) {
				
				console.log(msg);
				
				//채팅창에 메세지 append
				//$('#divChatData').append('<div>' + msg.senderMnick + " : " + msg.msgContent + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
				//							+ msg.msgSendtimeScript + '</div>');
				
				
				if(msg.msgSenderNo != loginMno){
					//수신한 메세지를 받아올 때
					$('#divChatData').append('<div align="left">' + msg.senderMnick + '<br>' + '<p class="btn btn-light" style="cursor:default;">' +
											  msg.msgContent + '</p><span>' + msg.msgSendtimeScript + '</span></div>');
				}else{
					//발신한 메세지를 받아올 때
					$('#divChatData').append('<div align="right">' + msg.senderMnick + '<br><span>' + msg.msgSendtimeScript + 
											 '</span><p class="btn btn-success" style="cursor:default;" >' + msg.msgContent + '</p></div>');
				
				}
				
				
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
<body style="overflow-x:hidden;">

	
		
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		
		<!-- 1:1 채팅창 박스 영역 -->
		<div class="row">
			<div class="alert alert-success mt-3" style="width: 840px; height: 700px; color:black; float:none; margin:0 auto">
				
				<!-- 상단영역(프로필, userName, nickName, 화상채팅) -->
				<div class="row">
					<div class="col" style="max-width: 80px;">
						<i class="far fa-comments fa-4x"></i>
					</div>
					<div class="col">
						<span style="font-size:15pt;">채팅 참여자 <br>[${chatroomDto.chatRequesterMnick }, ${chatroomDto.chatResponsorMnick }]</span>
					</div>
				</div>
				
				<hr> <!-- 가로선 -->
				
				
				<!-- 채팅창 영역 -->
				<div id="chatDiv" class="border border-success border-2" style="width: 800px; height: 520px; overflow-y: scroll;" >
					
					<div style="width: 760px; height: 500px; margin: 10px; ">
						<div id="divChatData" >
							<c:forEach items="${prevMsg }" var="msgDto">
							
							<!-- 말풍선 위치를 정하기 위한 조건문 -->
							<c:choose>
							
								<c:when test='${msgDto.msgSenderNo != login.mNo}'>
								<!--로그인 한 사람이 수신한 메세지-->
								<div align="left">${msgDto.senderMnick }<br>
									 <p class="btn btn-light" style="cursor:default;">${msgDto.msgContent }</p>
									 	<span>${msgDto.msgSendtimeScript }</span></div>
								</c:when>
							
								<c:otherwise>
								<!--로그인 한 사람이 발신한 메세지-->
								<div align="right">${msgDto.senderMnick }<br>
									<span>${msgDto.msgSendtimeScript }</span> <p class="btn btn-success" style="cursor:default;" >${msgDto.msgContent }</p>
								</div>
								</c:otherwise>
							
							</c:choose>
							
							</c:forEach> 	
						
						</div>
					</div>



				</div>
				
				
				<!-- 메세지 전송 입력 부분 -->
				<div style="position: absolute; bottom: 0px; width: 800px;">
					<div class="input-group mb-2">
						<input type="text" class="form-control" placeholder="메세지를 입력해주세요" id="message" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" /> 
						<input type="button" class="btn btn-success" id="btnSend" value="전송" onclick="webSocket.sendChat()" />
						
					</div>
				</div>

			</div>

		</div>
		

	</div>
	<!-- footer -->
		<%@ include file="../includes/footer.jsp" %>
		<!-- header의 'Page 내용 div' 닫기 태그  -->
		</div> 
		
<!-- Page 내용 끝 -->
</body>
</html>