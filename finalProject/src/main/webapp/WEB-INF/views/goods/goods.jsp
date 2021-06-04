	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header_R.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

 
 <title>GOODS</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>
 
 
 
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

	<div class="contentDiv">
	
		<div class="container text-center">
			<h1 class="mt-5">GOODS</h1>
			<div id="horisonLine"></div>
		</div>
		
	
			<!-- dropDown1-start -->
			<div class="container dropdown mt-4">
				<div class="row">
					<div class="col-6">
						<button type="button"
							class="btn btn-outline-success dropdown-toggle mt-3"
							data-bs-toggle="dropdown" aria-expanded="false" style="width:200px; ">카테고리</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="goodsBagList.do">가방</a></li>
							<li><a class="dropdown-item" href="goodsClothList.do">옷</a></li>
							<li><a class="dropdown-item" href="goodsAccList.do">악세사리</a></li>
						</ul>
					</div>
					<div class="col-6">
						<div class="btn-group float-end">
							<button id="goCart" type="button" class="btn btn-outline-success mt-3  " onclick="location.href='cartList.do?mNo=${login.mNo}'">
								나의 장바구니 보기</button>
								
								
		
								
								
								
								
							
						</div>
					</div>
				</div>
			</div>
			<!-- dropDown1-end -->
	
	
	       	<div class="container mt-5 text-center">
	           <div class="row">
					<c:choose>
						<c:when test="${empty list}">
							<h2>등록된 글이 없습니다. </h2>
						</c:when>
						<c:otherwise>
			         		<c:forEach items="${list}" var="dto">
				          		<div class="col-sm mt-5 ms-2">
					          		<div class="card h-100 " style="width:450px; height:550px;">
					                <div class="card-body text-cente">
					                 	<a href="goodsDetails.do?gNo=${dto.gNo}">	<img style="width:450px;height:350px; border:none; object-fit:cover;" 
					                 		src="resources/${dto.gImg}" class="img-thumbnail" alt="..."> </a><br>
					                 	<br><br>
						              	<h2>${dto.gName}</h2>
						                <p class="container mt-2">상품가격:${dto.gPrice}원</p>
					                </div>
					              	</div>
				              	</div>
			        		</c:forEach>
				    	</c:otherwise>
					</c:choose>
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
