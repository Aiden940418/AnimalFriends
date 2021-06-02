<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="../includes/header_R.jsp"%>


 <title>입양공고상세</title>

 <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>



<script>
	//notifySend
	function chatRequestBtnClick(){
		
	    let noticeSenderNo = '${login.mNo}';   //토스트 메세지 보내는 사람 회원번호
	    let noticeReceiverNo = '${dto.aMNo}';  //토스트 메세지 받을 사람 (입양공고 작성자 회원번호)
	    let noticeContent = '${login.mNick}님이 1:1 채팅을 요청하였습니다!' //토스트 메세지 내용
	    
		//채팅 메세지 보낸 시간 찍기
	  	var today = new Date();   
		var year = today.getFullYear(); // 년
		var month = today.getMonth() + 1;  // 월
		var date = today.getDate();  // 일
		var hours = today.getHours(); // 시
		var minutes = today.getMinutes();  // 분
		var seconds = today.getSeconds();  // 초
		let noticeTimeScript = month + "월" + date + "일 " + hours + ":" + minutes + ":" + seconds;
	    
	    // 전송한 정보를 db에 저장	
	    $.ajax({
	        type: 'post',
	        url: 'noticeInsert.do',
	        dataType: 'text',
	        data: {
	            noticeSenderNo: noticeSenderNo, 
	        	noticeReceiverNo: noticeReceiverNo,
	        	noticeContent: noticeContent,
	            noticeTimeScript: noticeTimeScript
	        },
	        success: function(){    // db전송 성공시 실시간 알림 전송
	            // 소켓에 전달되는 메시지
	            // 위에 기술한 EchoHandler에서 ,(comma)를 이용하여 분리시킨다.
	            socket.send(noticeReceiverNo+","+noticeContent+","+noticeTimeScript);	
	        }
	    });
	    
	    //채팅방 리스트로 페이지 이동
	    location.href="adoptToChatList.do?chatResponsorNo=${dto.aMNo }";

	}


</script>



<style type="text/css">
	
	#horisonLine {
	 	    height: 10px;
		    border-bottom: groove;
		    position: relative;
			top: 20px;
	    	width: 100%;
	}
	
	#horisonLine2 {
			height: 10px;
		    border-bottom: groove;
		    position: relative;
	    	width: 100%;
			margin-bottom: 30px;
	}
	


</style>

<div class="container text-center">

	<div class="container text-center">
		<h1 class="mt-5">입양공고</h1><br>
		<div id="horisonLine"></div>
		
	</div>
	
	<div class="row">
		<div class="col mt-5">
			<div class="btn-group float-end">
				<button type="button" class="btn btn-outline-success" onclick="location.href='adopt.do'">목록보기</button>
			</div>
		</div>
	</div>
	
	<div class="row">
		
				<div class="col-3"></div> <!-- 좌우 간격 맞추기 용도 -->
				
				<div class="col ms-4 my-3">
				
					<!-- 입양공고 카드(박스) 부분 -->
					<div class="card border-success mb-3 text-dark" style="width: 800px;">
						<div class="card-header bg-transparent border-success">
						 	<div class="row">
						 		<table>
						 			<tr align="center">
						 				<td><h3>${dto.aTitle }</h3></td>
						 			</tr>
						 			<tr align="right">
						 				<td>등록 날짜: ${dto.aDate } / 조회수: ${dto.aCount} / 댓글 개수: </td>
						 			</tr>
						 		</table>
						 	</div>
						</div>
						
						<!-- 입양공고 이미지 -->
						<img class="card-img-top" src="resources/${dto.aImg}">
						
						<ul class="list-group list-group-flush">
							<li class="list-group-item">
								<div class="row">
									<div class="col text-center">
										<span class="fs-4">특징 : ${dto.aMemo }</span>
									</div>
								</div>
							</li>
						</ul>
						<hr>
							
						<div class="card-body text-dark ">
							<table align="center">
								<tr>
									<td><h3>${dto.anmName}의 정보</h2></td>
								</tr>
							</table>
							<hr>
							<table align="center">
								<tr>
									<th align="left">나  이</th>
									<td align="center">${dto.anmAge}</td>
								</tr>
								<tr>
									<th align=left>품  종</th>
									<td align="center">${dto.anmBreed}</td>
								</tr>
								<tr>
									<th align=left>성  별</th>
									<td align="center">${dto.anmGender}</td>
								</tr>
								<tr>
									<th>예방접종 여부(Y/N)</th>
									<td align="center">${dto.anmVcnYn }</td>
								</tr>
								<tr>
									<th>중성화 여부(Y/N)</th>
									<td align="center">${dto.anmNtrYn }</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td align="center">${dto.aPhone }</td>
							</table>
							
						</div>
						<div class="card-footer bg-transparent border-success">
							<div>
								<div class="d-grid gap-2">
									<!-- 공고 작성자의 정보를 같이 넘겨 컨트롤러에서 1:1채팅방 생성 -->
  									<button class="button btn btn-success" id="chatRequestBtn" onclick="chatRequestBtnClick();">1:1채팅 요청</button>
								</div>
							</div>
							
						</div>
					</div>
				
				
				</div>
				
	</div>

		<!-- 댓글 태그 종료 -->
		
		<div class="container text-center mt-4">	
			<div id="horisonLine2"></div>
		
			<c:choose>
					<c:when test="${empty reply}">
						<h3>작성된 댓글이 없습니다.</h3>
					</c:when>
					<c:otherwise>
						<c:forEach items="${reply}" var="com">
							<table class="mt-2" style="margin-left:300px;">
								<tr>
									<th style="width:50px;">${com.writer }</th>
									<td style="width:400px">${com.aComContent }</td>
									<td>${com.aComDate}</td>
									<td>
										<c:set var ="mNick" value="${login.mNick }"/>
										<c:set var ="comNick" value="${com.writer}"/>
										<c:if test="${mNick == comNick}">
										<button value="삭제" onclick="location.href='aCommentDelete.do?aComNo=${com.aComNo}&writer=${login.mNick}&aNo=${com.aNo}'">삭제</button>
										</c:if>
									</td>
								</tr>
					
							</table>
						</c:forEach>
					</c:otherwise>
			</c:choose>
		</div>
		

	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>