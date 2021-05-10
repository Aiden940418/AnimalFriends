<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <title>입양공고</title>

<div class="container text-center">
	<h1 class="display-5 mt-5">입양공고</h1>
</div>

<!-- Example single danger button -->
<div class="container mt-5">
	<div class="btn-group">
		<button type="button"
			class="btn btn-outline-success dropdown-toggle mt-3"
			data-bs-toggle="dropdown" aria-expanded="false">지역</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">서울</a></li>
			<li><a class="dropdown-item" href="#">인천</a></li>
			<li><a class="dropdown-item" href="#">경기</a></li>
		</ul>
	</div>
	<div class="btn-group ">
		<button type="button"
			class="btn btn-outline-success dropdown-toggle mt-3"
			data-bs-toggle="dropdown" aria-expanded="false">동물 종류</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">강아지</a></li>
			<li><a class="dropdown-item" href="#">고양이</a></li>
		</ul>
	</div>
	<c:if test="${login != null }">
	<div class="btn-group float-end">
		<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='myAdoptList.do?mNo=${login.mNo}'">
		나의 입양공고 보기</button>
	</div>
	</c:if>
	
	<c:choose>
		<c:when test="${empty list }">
		
			
		</c:when>
	
	
		
		<c:otherwise>
		

		<div class="container mt-5" >
			<div class="row">
	<c:forEach items="${list}" var="dto">
					<div class="col-sm mt-5">
			<div class="card h-100" style="width:350px;">
				<a href="#"><img src="resources/images/adopt_dog1.png" class="card-img-top"
					alt="..."></a>
				<div class="card-body">
					<h5 class="card-title"><a href="adoptDetail.do?aNo=${dto.aNo}">${dto.aTitle}</a></h5>
					<p class="card-text">${dto.aMemo}</p>
				</div>
			</div>
			</div>
			
							</c:forEach>
			
			</div>
			
		
		
	</div>


	
	</c:otherwise>
	
	</c:choose>




<div class="container">
	<nav aria-label="Page navigation example ">
		<ul class="pagination justify-content-center mt-5">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
</div>

</div>


<%@ include file="../includes/footer.jsp"%>