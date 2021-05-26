<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container">
		<div class="row mt-5">
			<h1>QnA</h1>
			<br>
		</div>

		<!-- 카테고리 드롭다운 부분 -->

		<div class="container">
			
				<!-- 카테고리 분류 선택 버튼 (추후에) -->
				<button type="button" id="qctgySelectBtn"class="btn btn-outline-success dropdown-toggle mt-3"
						data-bs-toggle="dropdown" aria-expanded="false">카테고리 선택</button>
				<ul class="dropdown-menu" id="qctgySelect">
					<li><a class="dropdown-item" href="adoptQList.do">입양공고</a></li>
					<li><a class="dropdown-item" href="drQList.do">입양일기</a></li>
					<li><a class="dropdown-item" href="gdsQList.do">굿즈</a></li>
					<li><a class="dropdown-item" href="usesiteQList.do">사이트 이용</a></li>
				</ul> 
			<div>
				<button type="button" class="btn btn-outline-success"
					onclick="location.href='adminQnaWriteForm.do'">글쓰기</button>
			</div>
		</div>
		<br>
		
		<div class="row">
			<br>
			<table class="table text-center table-hover table-striped mt-5" style="font-size:14pt;">
				<thead class="table-dark">
					<tr>
						<!-- <th style="width: 10%;">번호</th> -->
						<th style="width: 20%;">카테고리</th>
						<th style="width: 40%;">제목</th>
						<th style="width: 15%;">글쓴이</th>
						<th style="width: 25%;">날짜</th>
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
									<%-- <td>${listCount - dto.rnum}</td> --%> <!-- 글 순서 번호 차례대로 띄우기 위한 코드 -->
									<td>${dto.qctgy}</td>
									<td>
										<c:forEach begin="1" end="${dto.qtitletab }">
	                               	 		<ion-icon name="return-down-forward-outline"></ion-icon>
	                            		</c:forEach> 
                           				<a href="adminQnaDetail.do?qno=${dto.qno}">${dto.qtitle}</a>
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

		<%-- 	<div>
			<nav aria-label="Page navigation example">
 				 <ul class="pagination justify-content-center">
  					
    				<li class="page-item"><a class="page-link" href="adoptQList.do${pageMaker.makeQuery(pageMaker.startPage)}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>


   				 <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    				<li class="page-item"><a class="page-link" href="adoptQList.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
   				 </c:forEach>


   				 	<li class="page-item"><a class="page-link" href="adoptQList.do${pageMaker.makeQuery(pageMaker.endPage)}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>

  				</ul>
 			</nav>
			</div> --%>




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
