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
		
		       	<div class="container mt-5 text-center ms-5" style="border:soild 1px; width:1000px;">
           <div class="row g-0" style="border:solid 1px;">

					<c:forEach items="${orderList}" var="orderList">
					
					<div class="col-sm mt-5 ms-5">
					<div class="card-body" style="border:solid 1px; width:900px;">
						<h5 class="card-title">주문번호 : <a>${orderList.orderId }</a> </h5><br>
						<p class="card-text">주문자 : ${orderList.orderName }</p>
						<p class="card-text">결제금액 : <fmt:formatNumber pattern="###,###,###" value="${orderList.amount}" /> 원</p>
						<!--
						<c:set var="gReviewStatus" value="${orderList.gReviewStatus }" />

						<c:if test="${gReviewStatus eq 'false'}">
						
						</c:if>
						-->
						<button type="button" id="reviewOpen_btn">상품 리뷰 입력</button>
						<script>
							$("#reviewOpen_btn").click(function(){
								$("#${orderList.orderId }").slideDown();
								$("#reviewOpen_btn").slideDown();
							});
						</script>
						
						
						
		<div class="${orderList.orderId }" id="${orderList.orderId }" style="display:none;">
					<h1 class="display-7 mt-5 ms-5">리뷰 내용 입력</h1>

         	
         			<div class="ms-5 container mt-2 boarder=1" id="sameAddr" >
         				<form action="mypageReviewWrite.do" method="post">
         					<input type="hidden" name="gRewWriter" value="${login.mNick }">
         					<input type="hidden" name="orderId" value="${orderList.orderId }">
         					<input type="hidden" name="gNo" value="${orderList.gNo }">
         					<table>
         						<tr>
         							<th>제목</th>
         							<td><input type="text" class="reset" name="gRewTitle" style="width:300px; height:40px" ></td>
         						</tr>
         						<tr>
         							<th>상세 내용 작성</th>
         							<td><input type="text" class="reset" name="gRewContent" style="width:300px; height:100px" ></td>
         						</tr>
         					</table>
         					<button type="submit">리뷰 작성 완료</button>
         				</form>
         			</div>
				</div>
						
						
						
					</div>
					</div>
					</c:forEach>
					
					<br><br>
				</div>
				
				
		
			</div>


		</div>
		
		
		
	
		
		














	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
	
	
	
