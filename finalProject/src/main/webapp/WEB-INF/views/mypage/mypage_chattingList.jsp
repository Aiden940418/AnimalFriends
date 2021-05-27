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
	
		
	<div class="container text-center mt-5">
			<h1>1:1 채팅</h1>
		
		<!-- 채팅방 리스트 영역-->
		<br>
		<br>
		
		<!-- <div class="container text-center">
		<div class="container text-center" style="border:1px solid; width:700px; height:200px;">
			<ion-icon name="person-circle-outline" style="font-size:80px; margin-right:200px "></ion-icon>
		
		</div>
		</div> -->
		</div>
		</div>
		
		
			
			
				<div class="container text-center">
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
					<div class="alert alert-primary row" role="alert" style="height: 180px; width: 600px; color:black;">
						<div class="col" style="max-width: 80px;">
							<ion-icon name="person-circle-outline" style="font-size:70px; "></ion-icon>
						</div>
					
						<div class="col">
							userID3 와의 채팅방<br>
						<label><a href="chattingDetail.do?chatRoomNo=4">채팅창으로..</a></label>
							
							
						</div>
						
					</div>
					</div>
					</div>
			
			
			<br>

			
			
			
			
		</div>







	</div>
	
	</div>

 
 
	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

</body>
</html>