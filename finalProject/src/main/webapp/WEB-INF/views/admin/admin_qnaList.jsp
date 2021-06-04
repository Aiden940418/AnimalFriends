<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>



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
	    width: 100%;
	 }
	 
	 #qnaRow {
	 	position: relative;
	 	top:180px;
	 
	 }
	 
	 #qnaDiv {
	 	position: relative;
	    top: 55px;
 
	 }
	 

</style>

<!-- page -->
<div class="contentDiv">

		<div class="container text-center" id="qnaDiv">
				<h1>Q & A 관리</h1>
		</div>
		
		<div id="horisonLine"></div>
		
		<div class="container" id="thrCtn" >
		<div class="row" id="qnaRow">
			
			<form role="form" method="get">
			  <div class="search input-group" style="width:500px">
			    <select class="form-select form-select-sm" style="width:50px" name="searchType">
			      <option selected>선택</option>
			      <option value="aQ"<c:out value="${scri.searchType eq 'aQ' ? 'selected' : ''}"/>>입양공고</option>
			      <option value="dQ"<c:out value="${scri.searchType eq 'dQ' ? 'selected' : ''}"/>>입양일기</option>
			      <option value="gQ"<c:out value="${scri.searchType eq 'gQ' ? 'selected' : ''}"/>>굿즈</option>
			      <option value="sQ"<c:out value="${scri.searchType eq 'sQ' ? 'selected' : ''}"/>>사이트이용</option>
			    </select>
			    
    			<input type="text" class="form-control" placeholder="찾고 싶은 제목 입력" name="keyword" id="keywordInput" value="${scri.keyword}"/>

    			<button class="btn btn-outline-success" id="searchBtn" type="button">검색</button>
				    <script>
				      $(function(){
				        $('#searchBtn').click(function() {
				          self.location = "adminQnaList.do" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
				        });
				      });   
				    </script>
				<button id="writeBtn" type="button" class="btn btn-outline-success"
			 		onclick="location.href='adminQnaWriteForm.do'">글쓰기</button>
  			  
  			  </div>
			<table class="table text-center table-hover table-striped mt-5" style="font-size:14pt;">
				<thead class="table-success">
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
			 
			</form>
			<!-- 페이징 부분 -->

			<div class="mt-5">
			<nav aria-label="Page navigation example">
 				 <ul class="pagination justify-content-center">
  					
    				<li class="page-item"><a class="page-link" href="adminQnaList.do${pageMaker.makeSearch(pageMaker.startPage)}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>


   				 <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    				<li class="page-item"><a class="page-link" href="adminQnaList.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
   				 </c:forEach>


   				 	<li class="page-item"><a class="page-link" href="adminQnaList.do${pageMaker.makeSearch(pageMaker.endPage)}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>

  				</ul>
 			</nav>
			</div>
		</div>
	</div>
	</div>
	

<div style="height:150px;"></div>

<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>