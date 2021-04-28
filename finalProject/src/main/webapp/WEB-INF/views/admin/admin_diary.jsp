<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
#profileIcon {
	font-size: 100px;
}

.myDiaryIconDiv {
	float: left;
}
</style>

<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');

	.container {
	font-family: 'Nanum Pen Script', cursive;
	color: black;
	font-size: 25px;
	}
</style>


<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- 페이지 내용 부분 -->
<div class="contentDiv">

	<div style="margin-top: 100px;">
		<div class="container">
			<h1 class="text-center">입양일기 관리</h1>
		</div>

		<div class="float-end" style="margin-right: 200px;">
			<button type="button" class="btn btn-outline-success">선택한 항목 삭제</button>
		</div>
	</div>

	<!-- 세로줄 -->
	<div
		style="border-bottom: groove; margin-top: 80px; margin-left: 20px; margin-right: 50px;">
	</div>

	<!-- 입양일기 그리드 시작 -->
	<div class="container">
		<div class="row">

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm">
				<div class="card" style="width: 18rem; margin-top: 20px;">
					<img class="card-img-top" src="resources/images/adopt_dog1.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<input type="checkbox">&nbsp;Some quick example text to
							build on the card title and make up the bulk of the card's
							content.
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 입양일기 그리드 끝 -->

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
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>
</html>
