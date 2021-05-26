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
						<button type="button" class="reviewOpen_btn">상품 리뷰 입력</button>
						<script>
							$(".reviewOpen_btn").click(function(){
								$(".reviewInfo").slideDown();
								$(".reviewOpen_btn").slideUp();
							});
						</script>
					</div>
				</div>
				
				<div class="reviewInfo" style="display:none;">
					<h1 class="display-7 mt-5 ms-5">리뷰 내용 입력</h1><button id="init_btn">정보초기화</button>
					<script>
         				$("#init_btn").click(function(){
							$(".reset").val() == "";
						});
         			</script>
         			<div class="container " style="font-size:30px;">
         			</div>
         			<div class="ms-5 container mt-2 boarder=1" id="sameAddr" >
         				<form action="mypageReviewWrite.do" method="post">
         					<input type="hidden" name="gRewWriter" value="${login.mNick }">
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
				</c:forEach>
			</div>
		</div>
		
		














	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
