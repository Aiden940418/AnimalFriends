<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- header -->
<%@ include file="../includes/header_R.jsp" %>

<title>Q & A List</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>

<style>
	 
	 #horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position: relative;
	    top: 145px;
	    width: 98%;
	 }
	 
	 	 
	 #thrCtn {
 		margin-top: 120px;
	 }
	 
	 #QnADiv {
	 	position: relative;
	    top: 55px;
 
	 }
	 
	 #qnaTable {
	 	position: relative;
	 	left:95px;
	 	
	 }
	 
	 #btnWrite {
	 	position: relative;
	 	width: 100px;
	    margin: 0px;
	    top: 148px;
	    left: 81px;

	 }


</style>



<!-- page -->
<div class="contentDiv">

		<div class = "container text-center" id="QnADiv">
			<h1 class="text-center">Q & A</h1>
		</div>
		
			<!-- 가로줄 -->
		<div id="horisonLine"></div>

		
		<div class="container mt-3">
			<div class="position-relative">
				<div id="btnWrite">
					<button type="button" class="btn btn-outline-success "
						onclick="location.href='myQnaWriteForm.do'">글쓰기</button>
				</div>
			</div>
		</div>


			
			<!-- <div class="position-relative">
				<div class="btn-group position-absolute top-0 end-0">
				</div>
			</div> -->
		
		
		<div class="container" id="thrCtn">
		  		
			<div class="row">
			<table class="table text-center table-hover table-striped mt-5" id="qnaTable" style="font-size:14pt; width:85%;">
				<thead class="table-success ">
					<tr>
						<!-- <th style="width: 10%;">번호</th> -->
						<th style="width: 30px;">카테고리</th>
						<th style="width: 60px;">제목</th>
						<th style="width: 20px;">글쓴이</th>
						<th style="width: 20px;">날짜</th>
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
			</div>
			<!-- 페이징 부분 -->

			<div class="row mt-5">
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
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>