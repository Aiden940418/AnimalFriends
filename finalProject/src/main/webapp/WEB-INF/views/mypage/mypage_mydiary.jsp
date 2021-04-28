<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	

	
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
				<label>UserID</label>
				<br> 
				<label>UserNickName</label>
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
			
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text"><a href="mydiaryDetail.do">Some quick example text to build on the
								card title and make up the bulk of the card's content.</a></p>
						</div>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="card" style="width: 18rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/adopt_dog1.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<!-- 입양일기 그리드 끝 -->
		
		
		
		
		
		
	</div>


	


	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
	
