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
	
		<div class="text-center mt-5">
			<h1>구매내역 조회</h1>
			<br>
		</div>
			<div class="btn-group float-end">
				<button type="button" class="btn btn-outline-success float-end me-5" onclick="location.href='orderList.do?mNo=${login.mNo}'">목록으로</button>
			</div>
		<!-- 구매내역 박스 -->
		
		       	<div class="container mt-5 text-center " style="width:1000px;">
           <div class="row g-0">

					<c:forEach items="${orderView}" var="orderView">
					
					<div class="col-sm mt-3 ">
					<div class="card-body" style=" width:900px;">
					<img src="resources/${orderView.gImg}" style="width:500px; height:500px;">
						<h5 class="card-title mt-5">주문번호 : ${orderView.orderId } </h5><br>
						<p class="card-text">상품이름: ${orderView.gName }</p>
						<p class="card-text">주문자 : ${orderView.orderName }</p>
						<p class="card-text">최종 결제금액 : <fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
						<p class="card-text">구매 일자 : <fmt:formatDate value="${orderView.orderDate }" pattern="yy.MM.dd HH:mm:ss"/></p>					 
						<c:set var="gReviewStatus" value="${orderView.gReviewStatus}" />

						<c:if test="${gReviewStatus eq 'false'}">
						
						<button type="button" class="btn-outline-success" id="reviewOpen_btn">상품 리뷰 입력</button>
						
						
						</c:if>
						
						<c:if test="${gReviewStatus eq 'true' }">
						<button type="button" class="btn-outline-success" id="reviewOpen_btn2" onclick="location.href='goodsDetails.do?gNo=${orderView.gNo }#review'">작성한 리뷰보러가기 </button>
						
						</c:if>
					
						<script>
							$("#reviewOpen_btn").click(function(){
								$("#${orderView.orderId }").slideDown();
								$("#reviewOpen_btn").slideDown();
							});
						</script>
						
						
						
		<div class="${orderView.orderId }" id="${orderView.orderId }" style="display:none;">
		
				<form action="mypageReviewWrite.do"method="post"> 
					<p class="fs-2 mt-5">후기를 입력해주세요</p><br>
					

         	
         			<div class="container mt-2 boarder=1" id="sameAddr" >
         					<input type="hidden" name="gRewWriter" value="${login.mNick }">
         					<input type="hidden" name="orderId" value="${orderView.orderId }">
         					<input type="hidden" name="gNo" value="${orderView.gNo }">
         					<input type="hidden" name="gRewTitle" value="0">
         					
         					<table style="margin-left:280px;">
         						<tr>
         							<td><input type="text" class="reset" name="gRewContent" style="width:300px; height:100px" ></td>
         						</tr>
         						
         						<tr>
         						<td colspan="2">
         						<button type="button" class="btn-outline-success" type="submit" style="float:right;">완료</button>
         						
         						</td>
         					</table>
         			</div>
         			
         			</form>
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
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>
	
	
	
