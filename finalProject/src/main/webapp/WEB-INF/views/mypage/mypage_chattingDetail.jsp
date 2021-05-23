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
	<%@ include file="/WEB-INF/views/includes/mypage_leftMenuBar.jsp"%>
		
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