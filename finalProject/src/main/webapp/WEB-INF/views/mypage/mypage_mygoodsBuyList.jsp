<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<div class="text-center mt-5">
			<h1>구매내역 조회</h1>
			<br>
		</div>

		<!-- 구매내역 박스 -->
		<div class="card mb-3" style="width: 1000px; margin-left: 100px;">
			<div class="row g-0">
				<div class="col-md-4" style="padding: 15px 15px 15px 15px;">
					<img src="resources/images/adopt_dog1.png" alt="..." style="width: 14rem;">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<form action="mygoodsReviewWriteForm.do" method="post" style="display: inline-block;" enctype="multipart/form-data">
							<table>
								<tr>
									<th><h5 class="card-title">상품명 : </h5></th>
									<td><h5 class="card-title" id="gNo">${dto.gName}</h5></td>
								</tr>
								<tr>
									<th><p class="card-text">결제 수단 : </p></th>
									<td><p class="card-text" id="">카카오페이</p></td>
								</tr>
								<tr>
									<th><p class="card-text">결제 금액 : </p></th>
									<td><p class="card-text" id="gPrice">${dto.gPrice}</p></td>
								</tr>
								<tr>
									<th><p class="card-text">배송 상태 : </p></th>
									<td><p class="card-text" id="">배송중</p></td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="작성하러 가기"
											class="btn btn-outline-success mx-3 my-1">
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<br>
		
		<div class="card mb-3" style="width: 1000px; margin-left: 100px;">
			<div class="row g-0">
				<div class="col-md-4" style="padding: 15px 15px 15px 15px;">
					<img src="resources/images/adopt_dog1.png" alt="..." style="width: 14rem;">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">상품명 : </h5><br>
						<p class="card-text">결제 수단 : </p>
						<p class="card-text">결제 금액 : </p>
						<p class="card-text">배송 상태 : </p>
						</p>
					</div>
				</div>
			</div>
		</div>












	</div>





	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
