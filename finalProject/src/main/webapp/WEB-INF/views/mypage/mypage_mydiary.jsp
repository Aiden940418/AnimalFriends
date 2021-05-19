<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	

	
	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<div style="margin-top: 100px; margin-left: 100px;">
			<div class="myDiaryIconDiv">
				<ion-icon name="person-circle-outline" id="profileIcon"></ion-icon>
			</div>
			<div>
				<label>UserID: ${login.mId }</label>
				<br> 
				<label>UserNickName: ${login.mNick }</label>
			</div>
			<div style="float: right; margin-right: 200px;">
				<button type="button" class="btn btn-secondary">팔로워</button>
				<button type="button" class="btn btn-secondary">팔로우</button>
			</div>
		</div>
		
		<!-- 세로줄 -->
		<div style="border-bottom: groove; margin-top: 80px; margin-left: 20px; margin-right: 50px;">
		</div>
		
		<!-- + 아이콘 -->
		<div style="margin-left: 50px; margin-top: 30px;">
			<a href="mydiaryWriteForm.do" style="color: black;">
				<ion-icon name="add-circle-outline" style="font-size:60px;"></ion-icon>
			</a>
		</div>
		
		
		<!-- 입양일기 그리드 시작 -->
		<div class="container">
			<div class="row">
			
				
				
				
				
				<c:forEach items="${list }" var="dto">
				
				
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/${dto.diaryImg }" >
						<div class="card-body">
							<p class="card-text">${dto.dcontent }</p>
						</div>
					</div>
				</div>
				

			

				</c:forEach>




				
			</div>
		</div>
		<!-- 입양일기 그리드 끝 -->
		
		
		
		
		
		
	</div>


	


	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
	
