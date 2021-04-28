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
		<!-- 제목 -->
		
		<div class="container text-center">
	<h1 class="display-5 mt-5">입양일기 상세</h1><br>
	<hr>
	<!-- 수정, 삭제 버튼 -->
	<button type="button" class="btn btn-outline-success ms-1 md-5 float-end" onclick="location.href='mydiary.do'">목록보기</button>
	<button type="button" class="btn btn-outline-success ms-1 float-end" onclick="location.href='mydiaryUpdateForm.do'">수정</button>
	<button type="button" class="btn btn-outline-success ms-1 float-end">삭제</button>
	

	<br>
	</div>
	<div class="container text-center mt-5">
		<h1>입양일기 제목부분</h1><br>
		
	<!-- 댓글개수, 등록날짜, 조회수, 좋아요 -->
		
		</div>
		<div class="container" style="margin-left:80px;">
		<span>등록날짜:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>조회수:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
   		<span>댓글 개수:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
	

		
		<br><br><br><br>
		
			<!-- image추가 시작 -->
		<div class="container text-center">
		
			<img src="resources/images/adopt_cat1.jpeg" width="600px" height="600px">
		</div>
	
		<!-- image추가 끝 -->
	
		<!-- 본문내용 시작 -->
	
		<div class="container text-center mt-5">
		<textarea class="container text-center display-7 "style=";outline:none; resize: none; border:none" readonly="readonly" rows="7px">오늘 처음으로 입양받았어요~
		</textarea>
		</div>
		
	<!-- 본문내용 끝  -->
		<br>
		
		<!-- 댓글 태그  -->
		
		<div class="container mt-2" style="margin-left:230px"> 
	
		<h3>Comments</h3>
		
		<input class="mt-2" type="text" style="width:650px; height:50px;"><input class="btn btn-outline-success ms-2" type="submit" value="전송">
		
	
		</div>
		
		
		<!-- 댓글 태그 종료 -->
		
		
		
		
	
	
	</div>
		</div>


</div>



	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

</body>
</html>