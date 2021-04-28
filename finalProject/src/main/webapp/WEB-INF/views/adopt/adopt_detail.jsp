<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
 <title>입양공고</title>



<div class="container text-center">
	<h1 class="display-5">입양 공고</h1><br>	<br>
	<hr>
	<button type="button" class="btn btn-outline-success md-5 float-end" onclick="location.href='adopt.do'">목록보기</button>

	
	<!-- header완료 -->

	<br>
	
	<div class="container text-center mt-5">
		<h1>글 제목</h1>
	
	
	</div>
	<div class="row justify-content-md-center mt-5 ms-5">
		<div class="col-8">
			<div class="card mt-5">
				<div class="card-header text-center display-6">크롱이에요</div>
				<ul class="list-group list-group-flush">
					<li
						class="list-group-item d-flex justify-content-between align-items-start">등록날짜
						&nbsp; <span>2021/04/11</span>
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
	</div>







	<%@ include file="../includes/footer.jsp"%>