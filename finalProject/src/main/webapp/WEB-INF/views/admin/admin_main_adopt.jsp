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

	<div class="container">

		<div class="container text-center">
			<h1 class="display-5 mt-5">입양공고 관리</h1>
		</div>

		<!-- Example single danger button -->
		<div class="container mt-5">
			<div class="btn-group">
				<button type="button"
					class="btn btn-info text-white dropdown-toggle mt-3"
					data-bs-toggle="dropdown" aria-expanded="false">지역</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">서울</a></li>
					<li><a class="dropdown-item" href="#">인천</a></li>
					<li><a class="dropdown-item" href="#">경기</a></li>
				</ul>
			</div>
			<div class="btn-group ">
				<button type="button"
					class="btn btn-info text-white dropdown-toggle mt-3"
					data-bs-toggle="dropdown" aria-expanded="false">동물 종류</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">강아지</a></li>
					<li><a class="dropdown-item" href="#">고양이</a></li>
				</ul>
			</div>
			<div class="btn-group">
				<button type="submit" class="btn btn-info text-white mt-3 ">찾기</button>
			</div>

			<div class="btn-group float-end">
				<button type="button" class="btn btn-info text-white mt-3 ">선택한
					항목 삭제</button>
			</div>
		</div>


		<div class="container mt-5">
			<div class="row">
				<div class="col">
					<div class="card" style="">
						<a href="#"><img src="resources/images/dog1.png"
							class="card-img-top" alt="..."></a>
						<div class="card-body">
							<h5 class="card-title">
								<input type="checkbox">&nbsp;코코를 안아주세요
							</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card" style="">
						<a href=""><img src="resources/images/dog2.jpeg"
							class="card-img-top" alt="..."></a>
						<div class="card-body">
							<h5 class="card-title">
								<input type="checkbox">&nbsp;사랑이를 부탁해
							</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card" style="">
						<a href=""><img src="resources/images/cat1.jpeg"
							class="card-img-top" alt="..."></a>
						<div class="card-body">
							<h5 class="card-title">
								<input type="checkbox">&nbsp;크롱이에요
							</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row mt-5">
				<div class="col">
					<div class="card" style="">
						<a href=""><img src="resources/images/dog3.jpeg"
							class="card-img-top" alt="..."></a>
						<div class="card-body">
							<h5 class="card-title">
								<input type="checkbox">&nbsp;망고입니다.
							</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card" style="">
						<a href=""><img src="resources/images/cat2.jpeg"
							class="card-img-top" alt="..."></a>
						<div class="card-body">
							<h5 class="card-title">
								<input type="checkbox">&nbsp;토토
							</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card" style="">
						<a href=""><img src="resources/images/cat3.jpeg"
							class="card-img-top" alt="..."></a>
						<div class="card-body">
							<h5 class="card-title">
								<input type="checkbox">&nbsp;쿠키와 함께해주세요
							</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<nav aria-label="Page navigation example ">
		<ul class="pagination justify-content-center mt-5">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>


</html>