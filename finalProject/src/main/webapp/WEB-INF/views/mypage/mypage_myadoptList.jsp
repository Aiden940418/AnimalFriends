<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
<style>
	 #adtNoti {
	 	position: relative;
	    top: 80px;
 
	 }
	 
	 #horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position: relative;
	    top: 145px;
	    width: 98%;
	 }
 	 #secCtn {
	 	position: relative;
		top: 150px;	 	
	 }
	 
	 	 
	 #thrCtn {
 		margin-top: 120px;
	 }
	 
	 
</style>	


	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<div class = "container text-center" id="adtNoti">
			<h1 class="text-center">내가 쓴 입양 공고</h1>
		</div>
		
			<!-- 가로줄 -->
		<div id="horisonLine"></div>
		
		
		<div class="container mt-3" id="secCtn">
			<button type="button" class="btn btn-outline-success" onclick="location.href='myAdoptWriteForm.do'">입양 공고 등록</button>
		</div>


		<!-- 입양공고 그리드 시작 -->
	<div class="container" id="thrCtn" >
		<div class="row">
			<c:choose>
				<c:when test="${empty list }">
					<div class="col text-center mt-5">
						<p>작성된 글이 없습니다</p>
					</div>
				</c:when>
				<c:otherwise>
							<c:forEach items="${list}" var="dto">
								<div class="col-sm mt-5">
									<div class="card h-100 ms-4" style="width:400px;">
										<a href="myAdoptDetail.do?aNo=${dto.aNo}"><img src="resources/${dto.aThumbImg }" class="card-img-top"
											alt="..."style="width:400px;height:350px; border:none; object-fit:cover;"></a>	
										<div class="card-body">
											<h4 class="card-title text-center">${dto.anmName}를 소개합니다.</h4><br>
											<p class="card-text text-center">${dto.aMemo}</p>
										</div>
									</div>
								</div>
							</c:forEach>
				</c:otherwise>
			  </c:choose>
			</div>
		</div>

	
	
	
	</div>



	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

