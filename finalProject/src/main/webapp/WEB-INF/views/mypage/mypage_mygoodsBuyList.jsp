<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<div class="text-center mt-5">
			<h1>구매내역 조회</h1>
			<br>
		</div>

		<!-- 구매내역 박스 -->
		<div class="card mb-3" style="width: 1000px; margin-left: 100px;">
		<c:forEach items="${orderList}" var="orderList">
			<div class="row g-0">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">주문번호 : <a>${orderList.orderId }</a> </h5><br>
						<p class="card-text">주문자 : ${orderList.orderName }</p>
						<p class="card-text">결제금액 : <fmt:formatNumber pattern="###,###,###" value="${orderList.amount}" /> 원</p>
						<a>상품평쓰기</a>
						
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		
		














	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
