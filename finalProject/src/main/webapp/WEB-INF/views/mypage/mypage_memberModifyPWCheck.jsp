<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
/* function fn_pwChk(){
	$.ajax({
		url : "pwChk.do",
		type : "post",
		dataType : "json",
		data : {"mPw" : $("#mPw").val()},
		success : function(data){
			
			 if ($("#mPw").val() == "") {
				 alert("비밀번호를 입력해주세요")
			 }else if(data == 0) {
				alert("비밀번호가 틀렸습니다.");
			 }
				
			 if(data == 1){
				alert("비밀번호가 맞습니다.");
			}

			
		}
	})
}; */

</script>
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
	<br>
	<br>
	<br>
		<div class="row mt-5 ms-5" style="margin-left:400px;">
			<h1>회원정보 수정</h1>

		</div>
		<br><br><br><br>
		
		<!-- 비밀번호 입력, 버튼 부분(container, row div class 사용하여 가로 배치) -->
		
		
			
		<div class="container" style="margin-left: 280px;">
			<div class="row"  style="width: 400px;">
				<form action="pwChk.do" method="POST">
				<input type="hidden" name="mId" value="${login.mId}">
				
				<div class="input-group mb-3 col">
					<span class="input-group-text" id="inputGroup-sizing-default">
						<ion-icon name="key-outline" style="font-size:25px;"></ion-icon>
					</span>
					<input name="mPw"type="password" class="form-control" id="mPw"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default">
					<button type="submit" class="btn btn-secondary ms-2" id="pwChk" style="width:70px">확인</button>
						
				</div>
				

				</form>
	
			</div>
		</div>







	</div>
	</div>
	<br><br><br><br><br><br><br>




	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
