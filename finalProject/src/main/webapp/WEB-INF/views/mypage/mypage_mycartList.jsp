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
		
		<div class="container">
		<!-- 상단 제목부분 -->
		<div class="container text-center mt-5">
			<h1>${login.mNick}님 장바구니</h1>
			<br>
		</div>
		<br>
		
		<!-- 찜 목록 그리드 시작 -->
		<div class="container" style="width: 1200px;">
			<div class="row">
			
				<!-- 카드 박스 (체크박스 포함) -->
				<div class="col-sm">
					<!-- 체크박스 -->
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault">CheckBox</label>
					</div>
					<!-- 카드 부분 -->
					<div class="card" style="width: 15rem; margin-top: 20px;">
						<img class="card-img-top"
							src="resources/images/goods.png" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">
								상품명 : <br> 
								내용 : <br>
								가격 : <br>
							</p>
					<button class="ms-4">주문하기</button><button class="ms-4">삭제</button>
						</div>
					</div>
				</div>
				
			
				<!--  카드박스 끝 -->
				
				
				<div>

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