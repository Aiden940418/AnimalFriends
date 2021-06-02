<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<!-- header -->
	<%@ include file="../includes/header_R.jsp" %>

 <title>나의 구매 리스트</title>

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
		top: 20px;
    	width: 100%;
	}

</style>


	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		<div class="container text-center">
				<h1 class="mt-5">구매 내역</h1><br>
				<div id="horisonLine"></div>
		</div>

		<!-- 구매내역 박스 -->
		
		       	<div class="container mt-3 text-center ms-5" style=" width:1000px;">
		       						<c:forEach items="${orderList}" var="orderList">
		       	
		<div class="container mt-5 text-center ms-5" style="border:soild 1px; width:1000px; margin: 0 auto; align-items: center; ">
           <div class="row g-0" style="border:solid 1px;">

					
					<div class="col-sm mt-3 ms-5">
					<div class="card-body" style="width:900px;">
						<h5 class="card-title">주문번호 : <a href="orderReview.do?orderId=${orderList.orderId }&mNo=${login.mNo}">${orderList.orderId }</a> </h5><br>
						<p class="card-text">주문자 : ${orderList.orderName }</p>
						<p class="card-text">결제금액 : <fmt:formatNumber pattern="###,###,###" value="${orderList.amount}" /> 원</p>

						
						
					</div>
					</div>
					</div>
					</c:forEach>
					
					<br><br>
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