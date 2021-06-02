<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="../includes/header.jsp"%>


 <title>입양공고상세</title>

<style type="text/css">

.wrap {
	
	top: 50%;
	left: 50%;

	text-align: center;
}

a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	margin: 20px auto;
	max-width: 200px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
}

a.button {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

a.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}




</style>


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


<div class="container text-center">
	<h1 class="display-5 mt-5">입양 공고</h1><br>
	<hr>
	<button type="button" class="btn btn-outline-success md-5 float-end" onclick="location.href='adopt.do'">목록보기</button>

	
	<!-- header완료 -->

	<br>
	</div>
	<div class="container text-center mt-5">
		<h1>${dto.aTitle }</h1><br>
		
		</div>
		<div class="container" style="margin-left:250px;">
		<span>등록날짜:&nbsp;${dto.aDate }&nbsp;&nbsp;&nbsp;</span><span>조회수:&nbsp;${dto.aCount}&nbsp;&nbsp;&nbsp;&nbsp;</span>
   		<span>댓글 개수:&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
	
		<br>
		<br>
		<br>

		<!-- image추가 시작 -->
		<div class="container text-center">
		
			<img src="resources/${dto.aImg}" width="600px" height="600px">
		</div>
		<!-- image추가 끝 -->
	
		<!-- 본문내용 시작 -->
	
		<div class="container text-center mt-5">
		<textarea class="container text-center display-7 "style=";outline:none; resize: none; border:none" readonly="readonly" rows="7px">
		${dto.aMemo }
		</textarea>
		</div>
		
		
		<!-- 본문내용 끝  -->
		
		<!-- 동물 내용 입력  -->
		
		<div class="container text-center">
		<table align="center">
		
		<h2>${dto.anmName}의 신상정보</h2>

			<tr>
			<th align="left">나  이</th>
			<td>${dto.anmAge}</td>
			</tr>
			<tr>
			<th align=left>품  종</th>
			<td>${dto.anmBreed}</td>
			</tr>
			<tr>
			<th align=left>성  별</th>
			<td>${dto.anmGender}</td>
			</tr>
			<tr>
			<th>예방접종 여부(Y/N)</th>
			<td>${dto.anmVcnYn }</td>
			</tr>
			<tr>
			<th>중성화 여부(Y/N)</th>
			<td>${dto.anmNtrYn }</td>
			</tr>
			<tr>
			<th>연락처</th>
			<td>${dto.aPhone }</td>
			
			 
		
		
		</table>
		</div>
		
		
		<!-- 동물내용 입력 종료 -->
		
		<!-- 1:1채팅 요청 -->
		<br>
		<br>
			<div class="wrap">
		<!-- 공고 작성자의 정보를 같이 넘겨 컨트롤러에서 1:1채팅방 생성 -->
  		<button class="button btn btn-success" id="chatRequestBtn" onclick="chatRequestBtnClick();">1:1채팅 요청</button>
  		</div>

		<!--  1:1 채팅 요청 종료 -->
		<hr>
		
		<!-- 댓글 태그  -->
		
		<div class="container mt-2" style="margin-left:360px"> 
	
	
		<form action="aCommentInsert.do" method="GET">
			<input type="hidden" name="aNo" value="${dto.aNo}">
			<input type="hidden" name="writer" id="writer" value="${login.mNick}">
		<div></div>
 
			
		<h3>Comments</h3>

		
		<input class="mt-2" type="text" style="width:650px; height:50px;margin-left:10px;" name="aComContent">
		<input class="btn btn-outline-success ms-2" type="submit" value="전송" onclick="checkLogin();">
		<script type="text/javascript">
			  function checkLogin() {
				  if($("#writer").val() == "") {
					  alert("로그인이 필요한 기능입니다!");
					  location.href = 'loginForm.do';
				  }
			  }
		</script>
		
	
		</form>
		</div>
		
		
		<!-- 댓글 태그 종료 -->
		
		
		<div class="container text-center mt-4">	
		
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
		





	<%@ include file="../includes/footer.jsp"%>