<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>

 <title>입양공고</title>

<div class="container text-center">
	<h1 class="display-5 mt-5">입양공고</h1>
</div>

<!-- Example single danger button -->
<div class="container mt-5">
	<div class="btn-group">
		<button type="button"
			class="btn btn-outline-success dropdown-toggle mt-3"
			data-bs-toggle="dropdown" aria-expanded="false">지역</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">서울</a></li>
			<li><a class="dropdown-item" href="#">인천</a></li>
			<li><a class="dropdown-item" href="#">경기</a></li>
		</ul>
	</div>
	<div class="btn-group ">
		<button type="button"
			class="btn btn-outline-success dropdown-toggle mt-3"
			data-bs-toggle="dropdown" aria-expanded="false">동물 종류</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">강아지</a></li>
			<li><a class="dropdown-item" href="#">고양이</a></li>
		</ul>
	</div>


	<div class="btn-group float-end">
		<button type="button" class="btn btn-outline-success mt-3 ">나의
			입양공고 보기</button>
	</div>
</div>


<div class="container mt-5">
	<div class="row">
		<div class="col">
			<div class="card h-100" style="">
				<a href="#"><img src="resources/images/adopt_dog1.png" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title"><a href="adoptDetail.do">코코를 안아주세요</a></h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100" style="">
				<a href=""><img src="resources/images/adopt_dog2.jpeg" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title">사랑이를 부탁해</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100" style="">
			
				<a href=""><img src="resources/images/adopt_cat1.jpeg" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title">크롱이에요</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
	</div>

	<div class="row mt-5">
		<div class="col">
			<div class="card h-100" style="">
				<a href=""><img src="resources/images/adopt_dog3.jpeg" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title">망고입니다.</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100" style="">
				<a href=""><img src="resources/images/adopt_dog2.jpeg" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title">토토</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100" style="">
				<a href=""><img src="resources/images/adopt_cat3.jpeg" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title">쿠키와 함께해주세요</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
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
</div>




<%@ include file="../includes/footer.jsp"%>
