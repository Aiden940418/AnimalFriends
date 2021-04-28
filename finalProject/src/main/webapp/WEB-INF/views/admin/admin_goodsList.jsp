<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
</style>
<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container text-center">
		<h1 class="display-3 mt-5">GOODS</h1>
		<hr>
	</div>


	<!-- dropDown1-start -->
	<div class="container dropdown  mt-4">
		<a class="btn btn-outline-success dropdown-toggle" href="#"
			role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
			aria-expanded="false"> 상품카테고리 </a>

		<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			<li><a class="dropdown-item" href="#">가방</a></li>
			<li><a class="dropdown-item" href="#">옷</a></li>
			<li><a class="dropdown-item" href="#">몰라..</a></li>
		</ul>


		<!-- dropDown1-end -->

		<!-- dropDown2-start -->
		<a class="btn btn-outline-success dropdown-toggle" href="#"
			role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
			aria-expanded="false"> 상품카테고리 </a>

		<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			<li><a class="dropdown-item" href="#">가방</a></li>
			<li><a class="dropdown-item" href="#">옷</a></li>
			<li><a class="dropdown-item" href="#">몰라..</a></li>
		</ul>

		<div class="btn-group float-end me-4">
			<button type="button" class="btn btn-outline-success"
				style="margin-right: 20px; margin-left:30px;">선택한 항목 삭제</button>
				<button type="button" class="btn btn-outline-success"
				onclick="location.href='adminGoodsWrite.do'">--상품 등록--</button>
				
		</div>
	</div>
	<!-- dropDown2-end -->

	<div class="container mt-5 text-center">
		<div class="row">
			<div class="col">
				<div class="card">
					<h3 class="card-header">
						<input type="checkbox">&nbsp; 상품제목
					</h3>
					<div class="card-body">
						<p class="card-text">
							<img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo9Y9gGygW0yzjifJLzMSsVt3S6gu72pPaOvSINq1sRrT9Ggw11HIlo7DIR6OydWo9k6GExIyx&usqp=CAc"
								class="img-thumbnail" alt="GOODS_Pic" onclick="location.href='adminGoodsDetail.do'"> Price:
						</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-outline-success">구매하기</a> 
						<a href="#" class="btn btn-outline-success">장바구니</a>

					</div>

				</div>
			</div>
			<div class="col">
				<div class="card">
					<h3 class="card-header">
						<input type="checkbox">&nbsp; 상품이름
					</h3>
					<div class="card-body">
						<p class="card-text">
							<img
								src="https://shop-phinf.pstatic.net/20190110_250/sihek_1547110084456dWx3y_JPEG/70417244050682055_563191345.jpg?type=m510"
								class="img-thumbnail" alt="..."> Price:
						</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-outline-success">구매하기</a> <a href="#"
							class="btn btn-outline-success">장바구니</a>

					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<h3 class="card-header">
						<input type="checkbox">&nbsp; 상품내용
					</h3>
					<div class="card-body">
						<p class="card-text"></p>
					</div>

					<div class="card-footer">
						<a href="#" class="btn btn-outline-success">구매하기</a> <a href="#"
							class="btn btn-outline-success">장바구니</a>

					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="container mt-5 text-center">
		<div class="row">
			<div class="col">
				<div class="card">
					<h3 class="card-header">
						<input type="checkbox">&nbsp; 상품내용
					</h3>
					<div class="card-body">
						<p class="card-text"></p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-outline-success">구매하기</a> <a href="#"
							class="btn btn-outline-success">장바구니</a>

					</div>

				</div>
			</div>
			<div class="col">
				<div class="card">
					<h3 class="card-header">
						<input type="checkbox">&nbsp; 상품이름
					</h3>
					<div class="card-body">
						<p class="card-text"></p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-outline-success">구매하기</a> <a href="#"
							class="btn btn-outline-success">장바구니</a>

					</div>
				</div>
			</div>
			<div class="col">
				<div class="card">
					<h3 class="card-header">
						<input type="checkbox">&nbsp; 상품내용
					</h3>
					<div class="card-body">
						<p class="card-text"></p>
					</div>

					<div class="card-footer">
						<a href="#" class="btn btn-outline-success">구매하기</a> <a href="#"
							class="btn btn-outline-success">장바구니</a>

					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>

</html>