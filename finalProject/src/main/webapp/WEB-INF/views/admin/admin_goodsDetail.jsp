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

		<div class="text mt-5 ms-5">

			<a href="adminGoodsUpdate.do" class="btn btn-outline-success">수정</a> <a href=""
				class="btn btn-outline-success">삭제</a> <a href="goods.jsp"
				class="btn btn-outline-success">목록</a>

		</div>
		<hr>

		<div class="container mt-5 text-center">
			<div class="row">
				<div class="col">
					<div class="card">

						<div class="card-body">
							<p class="card-text">
								<img
									src="https://shop-phinf.pstatic.net/20190110_250/sihek_1547110084456dWx3y_JPEG/70417244050682055_563191345.jpg?type=m510"
									class="rounded float-start mt-4 ms-5" alt="...">
							<div>
								<h1 class="display-4">상품제목</h1>
								<div class="text-left">상품가격</div>
								<textarea rows="8" cols="40">설명을 입력해주세용</textarea>
								<br>

								<!-- dropDown1-start -->
								<div class="dropdown ms-5 mt-4">
									<a class="btn btn-outline-success dropdown-toggle" href="#"
										role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
										aria-expanded="false"> ----수량선택---- </a>

									<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
										<li><a class="dropdown-item" href="#">1</a></li>
										<li><a class="dropdown-item" href="#">2</a></li>
										<li><a class="dropdown-item" href="#">3</a></li>
									</ul>


									<!-- dropDown1-end -->
									<br> <br> <a href="goods_purchase.jsp"
										class="btn btn-outline-success btn-lg">-----결제하기----</a> <a
										href="#" class="btn btn-outline-success btn-lg ms-3">-----찜하기----</a>

								</div>
							</div>


							<br> <br>
							<hr>
							<div class="container mt-5 text-center	">


								<a href="#.detail" class="btn btn-outline-success ms-5">--------상세보기---------</a>
								<a href="#" class="btn btn-outline-success ms-5">--------리뷰보기---------</a>
								<a href="#" class="btn btn-outline-success ms-5">---------Q&A---------</a>
								<a href="#" class="btn btn-outline-success ms-5">--------업체소개---------</a>



							</div>

							<div>
								<h1 id="detail" class="detail display-4 mt-5">상세보기</h1>
								<br> <br> <br> <br> <br> <br> <br>
								<br> <br> <br> <br> <br> <br> <br>
								<br>

							</div>



							<div>
								<hr>

								<h1 class="display-3 mt-5 text">리뷰보기</h1>
								<table class="table text-center table-hover">
									<thead class="table-white">
										<tr>
											<th style="width: 20%;">작성자</th>
											<th style="width: 60%;">제목</th>
											<th style="width: 20%;">날짜</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>aiden</td>
											<td>맛있어요!!!!</td>
											<td>2021-04-13</td>
										</tr>

									</tbody>
								</table>

							</div>
							<hr>

							<div>
								<br>

								<h1 class="display-4 mt-3">Q&A</h1>
								<table class="table text-center table-hover">
									<thead class="table-dark">
										<tr>
											<th style="width: 10%;">NO.</th>
											<th style="width: 70%;">제목</th>
											<th style="width: 20%;">날짜</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>상품문의</td>
											<td>2021-04-13</td>
										</tr>

									</tbody>
								</table>

								<hr>

							</div>


							<div>
								<hr>

								<h1 class="display-4 mt-5">업체소개</h1>

								<table
									class="table text-center table-bordered border-primary;
		">
									<thead class="table-white">

										<tr>
											<th>업체명</th>
											<th>대표자명</th>
											<th>전화번호
										</tr>

										<tr>
											<td>ㅁㄴㅇㄴ</td>
											<td>sdaas</td>
											<td>010833</td>
										</tr>
										<tr>
											<th>사업자번호</th>
											<td colspan="2">경기도 성남시 수정구 어쩌구..</td>
										</tr>
								</table>
								<hr>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>



</html>