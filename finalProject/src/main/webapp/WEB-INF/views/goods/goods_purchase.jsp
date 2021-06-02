<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header_R.jsp" %>   
	
 
 <title>주문내역 확인</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>



	<div class="container text">
		<h1 class="display-6 mt-5 ms-5">주문내역 확인</h1>
		<hr>
	</div>

     <div class="container mt-5 ms-5">
     
     
		<div class="card mb-3" style="width: 1200px; margin-left: 40px;">
			<div class="row g-0">
				<div class="col-md-4" style="padding: 15px 15px 15px 15px;">
					<img src="resources/images/adopt_dog1.png" alt="..." style="width: 14rem;">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">상품명 : </h5><br>
						<p class="card-text">수량  : </p>
						<p class="card-text">옵션  : </p>
						<p class="card-text">결제예상 금액  : </p>
						
					</div>
				</div>
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