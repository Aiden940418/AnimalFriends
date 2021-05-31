<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>
		
	<!-- 페이지 내용 부분 -->
	

	<div class="contentDiv">
	
		
	<div class="container text-center mt-5 ">
			<h1>1:1 채팅</h1>
		 
		<!-- 채팅방 리스트 Box Div-->
		<div class="row-xs position-relative border border-success border-2 mt-4" 
				style="width:500px; height: 600px; overflow-y: scroll; margin:0 auto; " 
						id="ListBoxDiv">
		
		<!-- 채팅방 -->
		 <c:forEach items="${list }" var="chatroomDto">
			
			<a href="chattingDetail.do?chatroomNo=${chatroomDto.chatroomNo}&chatRequesterNo=${chatroomDto.chatRequesterNo}&chatResponsorNo=${chatroomDto.chatResponsorNo}
						&chatRequesterMnick=${chatroomDto.chatRequesterMnick}&chatResponsorMnick=${chatroomDto.chatResponsorMnick}" 
					style="color:black; text-decoration:none; !important">
				<div class="col border border-success row btn-outline-success" style="height:100px; width:490px;">
					<div class="col mt-4 ms-4" style="max-width:51px;">
						<ion-icon name="chatbubble-ellipses-outline" style="font-size:50px;"></ion-icon>
					</div>
						
					<div class="col mt-2 me-5">
						<span style="justify-content: center; align-items: center">[ ${chatroomDto.chatRequesterMnick}, ${chatroomDto.chatResponsorMnick } ] 님의 채팅방</span>
						<br><br>
						<span style="justify-content: center; align-items: center">최근 메세지 : ${chatroomDto.recentMessage}</span>
					</div>
				</div>
			</a>
		
		</c:forEach> 	
	
	
		
		
		</div>

			<!-- footer -->
			<%@ include file="../includes/footer.jsp" %>
		
		</div>
		</div>
		
			

</body>
</html>