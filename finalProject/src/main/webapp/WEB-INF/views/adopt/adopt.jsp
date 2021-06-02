<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header_R.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
  	#horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position: relative;
		top: 20px;
    	width: 100%;
	 }
	 .btn-group{
	 padding-top: 20px;
	 }

	 
	 
</style>
 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
 	
 	
  //카테고리 선택 중 0일경우 alert창 띄어주는 script
	$("#search").click(function(){
		debugger;
		 var aArea = $("#aArea").val();
		 var aType = $("#aType").val();
		 
		 if(aArea == "0" || aType == "0"){
			 alert("검색오류:카테고리를 선택해주세요");
		 }
	});


</script>

<!-- 입양공고 시작  -->
 <title>입양공고</title>
 
 
 <!-- 입양공고 전체 container  -->
<div class="container mt-5">

<!-- 입양공고 상단이름  -->
<div class="container text-center">
	<h1 class="mt-5">입양공고</h1>
</div>
<!-- 입양공고 상단이름 END -->


<!--호리즌 라인 -->
<div id="horisonLine"></div>


	<!-- 입양공고 지역 카테고리 시작 -->
	<form action="adoptCtgy.do" method="GET">
	
	<div class="btn-group" >
		<select id="aArea" name="aArea" class="btn btn-outline-success mt-3" style="width: 100px ">
				<option value="0">지역</option>
				<option value="서울동부">서울동부</option>
				<option value="서울서부">서울서부</option>
				<option value="서울남부">서울남부</option>
				<option value="서울북부">서울북부</option>
				<option value="경기인천">경기인천</option>
		</select>
	</div>
	<!-- 입양공고 지역 카테고리 끝  -->
	
	<!-- 입양공고 동물 카테고리 시작  -->
	<div class="btn-group">
		<select id="aType" name="aType" class="btn btn-outline-success mt-3" style="width: 100px ">
				<option value="0">동물종류</option>
				<option value="강아지">강아지</option>
				<option value="고양이">고양이</option>
			</select>
	</div>
	
	<!-- 입양공고 동물 카테고리 끝 -->
	
	<!-- 입양공고 카테고리 찾기 버튼 -->
	<div class="btn-group">
	<button type="submit" class="btn btn-outline-success mt-3" id="search" >찾기</button>
	
	</div>
	<!-- 입양공고 카테고리 찾기 버튼 END -->
	
	</form>
	<!-- search 버튼 누르면 form태그 실행 -->
	

				
	<!--  나의 입양공고 보기 button -->	
		
		<c:if test="${login != null }">
				<div class="btn-group float-end">
					<button type="button" class="btn btn-outline-success mt-3 " 
					onclick="location.href='myAdoptList.do?mNo=${login.mNo}'">
					나의 입양공고 보기</button>
				</div>
		</c:if>
			
	<!--  나의 입양공고 보기 button end  -->	
			
			
	<!-- 입양공고 List 시작  -->		
			<c:choose>
				<c:when test="${empty list }">
				<p>작성된 글이 없습니다</p>
				</c:when>
	
	
				<c:otherwise>
				  <div class="container mt-5" > 
					<div class="row">
						<c:forEach items="${list}" var="dto">
							<div class="col-sm mt-5">
								<div class="card h-100 text-center" style="width:450px;  margin: 0 auto; align-items: center;">
									<a href="adoptDetail.do?aNo=${dto.aNo}"> 
									<img src="resources/${dto.aThumbImg }" class="card-img-top"
											alt="..." style="width:450px;height:350px; border:none; object-fit:cover;"></a>
									<div>
									 	<img src="resources/images/adopt_count.png" style="width:30px;">${dto.aCount }
									 	지역:${dto.aArea }
									</div>
									<div class="card-body">
										<h4 class="card-title text-center">${dto.anmName}를 소개합니다.<br></h4>
										<p class="card-text text-center">${dto.aMemo}</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				   </div>
				</c:otherwise>
			</c:choose>
		<br>
		<br>
	

			<!-- 페이징 부분 -->

			<div>
			<nav aria-label="Page navigation example">
 				 <ul class="pagination justify-content-center">
  					
    				<li class="page-item"><a class="page-link" href="adopt.do${pageMaker.makeQuery(pageMaker.startPage)}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>


   				 <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    				<li class="page-item"><a class="page-link" href="adopt.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
   				 </c:forEach>


   				 	<li class="page-item"><a class="page-link" href="adopt.do${pageMaker.makeQuery(pageMaker.endPage)}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>

  				</ul>
 			</nav>
			</div>
</div> <!-- 입양공고 끝  -->

	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>
