<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- header -->
<%@ include file="../includes/header.jsp"%>

<!-- leftmenubar -->
<%@ include file="../includes/mypage_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container">
		<div class="row mt-5">
			<h1>QnA</h1>
			<br>
		</div>

		<!-- 카테고리 드롭다운 부분 -->

		<div class="container">
			<div class="btn-group">
				<button type="button"
					class="btn btn-outline-success dropdown-toggle mt-3"
					data-bs-toggle="dropdown" aria-expanded="false">카테고리 선택</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">입양공고</a></li>
					<li><a class="dropdown-item" href="#">입양일기</a></li>
					<li><a class="dropdown-item" href="#">굿즈</a></li>
					<li><a class="dropdown-item" href="#">사이트 이용</a></li>
				</ul>
			</div>

			<div class="btn-group float-end">
				<button type="button" class="btn btn-outline-success mt-3 "
					onclick="location.href='myQnaWriteForm.do'">글쓰기</button>
			</div>
		</div>
		<br>
		<div class="row">
			<br>
			<table class="table text-center table-hover table-striped" style="font-size:14pt;">
				<thead class="table-dark">
					<tr>
						<th style="width: 10%;">번호</th>
						<th style="width: 15%;">카테고리</th>
						<th style="width: 45%;">제목</th>
						<th style="width: 10%;">글쓴이</th>
						<th style="width: 20%;">날짜</th>
					</tr>
				</thead>
				<tbody>

					<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="4" align="left">작성된 글이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="dto" varStatus="status">
								<tr>
									<td>${fn:length(list)-status.index}</td> <!-- 글 순서 번호 차례대로 띄우기 위한 코드 -->
									<td>${dto.qctgy}</td>
									<td>
										<c:forEach begin="1" end="${dto.qtitletab }">
	                               	 		<ion-icon name="return-down-forward-outline"></ion-icon>
	                            		</c:forEach> 
                           				<a href="myQnaDetail.do?qno=${dto.qno}">${dto.qtitle}</a>
									</td>
									<td>${dto.mnick}</td>
									<td>${dto.qdateToChar}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
						
					</c:choose>

				</tbody>
			</table>
			<!-- 페이징 부분 -->

			<div>
			<nav aria-label="Page navigation example">
 				 <ul class="pagination justify-content-center">
  					
    				<li class="page-item"><a class="page-link" href="myQnaList.do${pageMaker.makeQuery(pageMaker.startPage)}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>


   				 <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    				<li class="page-item"><a class="page-link" href="myQnaList.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
   				 </c:forEach>


   				 	<li class="page-item"><a class="page-link" href="myQnaList.do${pageMaker.makeQuery(pageMaker.endPage)}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>

  				</ul>
 			</nav>
			</div>


		</div>
	</div>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
