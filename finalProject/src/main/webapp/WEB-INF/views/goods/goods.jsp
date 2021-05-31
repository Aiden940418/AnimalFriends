<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>   
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
 <title>굿즈</title>
<div class="container mt-5">
	<div class="container text-center">
		<h1 class="mt-5">GOODS</h1>
	</div>
	<!-- 가로줄 -->
		<div id="horisonLine"></div>
	<div class="container dropdown  mt-5">
		<a class="btn btn-outline-success dropdown-toggle" href="#"
			role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
			aria-expanded="false"> 상품종류 </a>

		<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			<li><a class="dropdown-item" href="goodsBagList.do">가방</a></li>
			<li><a class="dropdown-item" href="goodsClothList.do">옷</a></li>
			<li><a class="dropdown-item" href="goodsAccList.do">악세사리</a></li>
		</ul>
					<div class="btn-group float-end">
						<button type="button" class="btn btn-outline-success  " onclick="location.href='cartList.do?mNo=${login.mNo}'">
							나의 장바구니 보기</button>
					</div>


				<c:choose>
					<c:when test="${empty list}">
						<h2>등록된 글이 없습니다. </h2>
					</c:when>
					<c:otherwise>
       	<div class="container mt-5 text-center ms-5" style="display: inline-block">
			<div class="row">
		         		<c:forEach items="${list}" var="dto">
			          		<div class="col-sm mt-5 ms-5">
				          		<div class="card h-100 " style="width:550px; height:550px;">
				                <div class="card-body text-cente">
				                 	<a href="goodsDetails.do?gNo=${dto.gNo}">	<img style="width:500px;height:350px; border:none; object-fit:cover;" 
				                 		src="resources/${dto.gImg}" class="img-thumbnail" alt="..."> </a><br>
				                 	<br><br>
					              	<h2>${dto.gName}</h2>
					                <p class="container mt-2">상품가격:${dto.gPrice}원</p>
				                </div>
				              	</div>
			              	</div>
		        		</c:forEach>
		        		</div>
		        		</div>
			    	</c:otherwise>
				</c:choose>
            </div>
				
 <%@ include file="../includes/footer.jsp" %>   
