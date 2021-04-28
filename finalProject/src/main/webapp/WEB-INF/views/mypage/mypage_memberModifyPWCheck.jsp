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
		
		<!-- 상단 제목부분 -->
	<div class="container">
		<div class="row mt-5 ms-5">
			<h1>회원정보 수정</h1>
			<br>

		</div>
		<br><br><br><br><br><br><br>
		
		<!-- 비밀번호 입력, 버튼 부분(container, row div class 사용하여 가로 배치) -->
		<div class="container" style="margin-left: 300px;">
			<div class="row"  style="width: 700px;">
			
				<div class="input-group mb-3 col">
					<span class="input-group-text" id="inputGroup-sizing-default">
						<ion-icon name="key-outline" style="font-size:25px;"></ion-icon>
					</span>
					<input type="password" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default">
				</div>
				
				<div class="col">
					<button type="button" class="btn btn-secondary">확인</button>
				</div>
	
			</div>
		</div>







	</div>
	</div>
	<br><br><br><br><br><br><br>




	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
