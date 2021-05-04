<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
</style>

<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');

	.container {
	font-family: 'Nanum Pen Script', cursive;
	color: black; 5 b5                                                                                                                                               
	font-size: 25px;
	}
</style>
<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container">
	<h1 class="display-5 mt-5 text-center">입양 공고 상세</h1>
	<button type="button" class="btn btn-outline-success mt-3 float-end" onclick="location.href='adopt.jsp'">목록보기</button>
	<div class="row justify-content-md-center">
		<div class="col-5">
			<div class="card mt-5">
				<div class="card-header text-center display-6">크롱이에요</div>
				<ul class="list-group list-group-flush">
					<li
						class="list-group-item d-flex justify-content-between align-items-start">등록날짜
						&nbsp; <span class="badge bg-primary rounded-pill">2021/04/11</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-start">조회수
						&nbsp; <span class="badge bg-primary rounded-pill">43</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-start">댓글
						개수 &nbsp; <span class="badge bg-primary rounded-pill">4</span>
					</li>
				</ul>
				<a href=""><img src="resources/images/adopt_dog3.jpeg" class="card-img-top"></a>

				<div class="card-body text-center">
					<p class="card-text mt-2" style="word-break: keep-all;">오래전
						할머니께서 키우시던 강아지의 새끼를 분양받아서 키우다가 개인사정으로 새로운 주인을 찾고 있어요.</p>
				</div>
				<ul class="list-group list-group-flush text-center">
					<li class="list-group-item">이름: 크롱</li>
					<li class="list-group-item">나이: 1살</li>
					<li class="list-group-item">품종: 비숑</li>
					<li class="list-group-item">성별: 수컷</li>
					<li class="list-group-item">예방 접종 여부: Y</li>
					<li class="list-group-item">중성화 여부: Y</li>
					<li class="list-group-item">연락처: 010-2345-1231</li>
					<li class="list-group-item">
						<button class="btn btn-primary" type="button">댓글</button>
					</li>
					<li class="list-group-item">
						<button class="btn btn-primary" type="button">1:1채팅</button>
					</li>

				</ul>


			</div>
		</div>


	</div>
			<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>
	</div>
		

</div>
</html>