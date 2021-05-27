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
<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='totalAreaList.do'">전체지역</button>
<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='seoulEastList.do'">서울동부</button>
<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='seoulSouthList.do'">서울남부</button>
<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='seoulNorthList.do'">서울북부</button>
<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='seoulWestList.do'">서울서부</button>
<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='GyeonggiList.do'">경기인천</button>

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
		

	<div class="container mt-5 ms-5" > 
			<div class="row">
	<c:forEach items="${list}" var="dto">
			<div class="col-sm mt-5" >
			<div class="card h-100" style="width:550px;">
										<a href="adoptDetail.do?aNo=${dto.aNo}"> 
				<img src="resources/${dto.aThumbImg }" class="card-img-top"
					alt="..."></a>
												<div>
							
		 	<img src="resources/images/adopt_count.png" style="width:30px;">${dto.aCount }
		 	지역:${dto.aArea }

			</div>
				<div class="card-body">
					<h4 class="card-title text-center">${dto.anmName}를 소개합니다.<br>
					
					</h4>
					<p class="card-text text-center">${dto.aMemo}</p>
					
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