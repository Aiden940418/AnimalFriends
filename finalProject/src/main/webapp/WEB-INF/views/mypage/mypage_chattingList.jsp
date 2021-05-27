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
			
			<a href="" style="color:black; text-decoration:none; !important">
			<div class="col border border-success" style="height:100px;">
			<span style="justify-content: center; align-items: center">채팅방 참여자:${chatroomDto.readerMnick}, ${chatroomDto.writerMnick }</span>
			</div>
			</a>
		
		</c:forEach> 	
	
	
		</a>
		
		
		</div>

			<!-- footer -->
			<%@ include file="../includes/footer.jsp" %>
		
		</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			
			
				<!-- <div class="container text-center">
					<div class="alert alert-primary row" role="alert" style="height: 180px; width: 600px; color:black;">
						<div class="col" style="max-width: 80px;">
							<ion-icon name="person-circle-outline" style="font-size:70px; "></ion-icon>
						</div>
					
						<div class="col">
							userID1 와의 채팅방<br>
						<label><a href="chattingDetail.do?chatRoomNo=2&writerMno=1&readerMno=2">채팅창으로..</a></label>
							
							
						</div>
						
					</div>
					<div class="alert alert-primary row" role="alert" style="height: 180px; width: 600px; color:black;">
						<div class="col" style="max-width: 80px;">
							<ion-icon name="person-circle-outline" style="font-size:70px; "></ion-icon>
						</div>
					
						<div class="col">
							userID2 와의 채팅방<br>
						<label><a href="chattingDetail.do?chatRoomNo=2&writerMno=2&readerMno=3">채팅창으로..</a></label>
							
							
						</div>
						
					</div>
						
					</div>
			 -->

</body>
</html>