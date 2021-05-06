<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	<div class = "container mt-5">
		
		<div class="text-center">
			<h1>내가 쓴 입양 공고</h1>
			<br>
		</div>
		
		<div class="text-right ms-5">
			<button type="button" class="btn btn-outline-success" onclick="location.href='myAdoptWriteForm.do'">입양 공고 등록</button>
		</div>
		
		<!-- 세로줄 -->
		<hr style="border:groove;backgroundColor:black;">

		<!-- 입양공고 그리드 시작 -->
	
	<c:choose>
		<c:when test="${empty list }">
		
			
		</c:when>
	
	
		
		<c:otherwise>
		

		<div class="container mt-5" >
			<div class="row">
	<c:forEach items="${list}" var="dto">
					<div class="col-sm mt-5">
			<div class="card h-100" style="width:350px;">
				<a href="#"><img src="resources/images/adopt_dog1.png" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title"><a href="myAdoptDetail.do?aNo=${dto.aNo}">${dto.aTitle}</a></h5>
					<p class="card-text">${dto.aMemo}</p>
				</div>
			</div>
			</div>
			
							</c:forEach>
			
			</div>
			
		
		
	</div>


	
	</c:otherwise>
	
	</c:choose>

	
	
	</div>
	</div>



	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

