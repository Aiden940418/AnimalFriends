<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		
		<div style="margin-left: 550px;">
			<h1>입양공고 상세</h1>
			<br>
		</div>
		<br>
		
		<!-- 제목 -->
		<div style="margin-left: 550px;">
			<h2>초코를 소개합니다~</h2>
		</div>
		<br>
		
		<!-- 댓글개수, 등록날짜, 조회수 -->
		<!-- 수정, 목록으로 버튼 -->
		<div style="margin-left: 30px;">
			<div style="width: 500px; float: left;" >
				댓글 개수 : <br> 등록 날짜 : &nbsp;&nbsp;&nbsp;조회수 :
			</div>
			<div style="float: right; margin-right: 200px;">
				<button type="button" class="btn btn-primary">수정</button>
				<button type="button" class="btn btn-primary">목록으로</button>
			</div>
		</div>
		<br><br><br><br>
	
		<div class="card" style="width: 50rem; margin-left: 300px;">
			<img class="card-img-top" src="resources/images/adopt_dog1.png"
				alt="Card image cap">
			<div class="card-body">
				<p class="card-text">
					내용 : <br>
					동물 이름 : <br>
					동물 나이 : <br>
					동물 품종 : <br>
					동물 성별 : <br>
					예방접종 여부 : <br>
					중성화 여부 : <br>
					연락처 : <br>
					메모 : <br>
				</p>
			</div>
		</div>










	</div>
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
