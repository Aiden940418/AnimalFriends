<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header_R.jsp" %>   

 
 <title>결제 완료</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>
 
 

<style type="text/css">
.container {
	margin-top: 21px;
	display: flex;
	flex-direction: column;
	align-items: center;
}
</style>


<div class="container">
	<p>
		<br>
	</p>
	<h1>결제완료</h1>
	<p>
		<br> <br>
	</p>
	<div class="row" style="width: 700px; background-color: lightgrey;">
		<p>
			<br> <br>
		</p>
		<p style="font-size: 24pt; text-align: center;">결제가 완료되었습니다.
		<p>
		<p>
			<br>
		</p>
	</div>


	<div class="row">
		<p>
			<br>
		</p>
		<input type="button" value="주문내역 조회" class="btn btn-outline-success mt-4"
			onclick="location.href='myGoodsBuyList.do'"
			style="width: 200px; margin-left: 50px; margin-right: 30px;">
		<input type="button" value="쇼핑하러 가기" class="btn btn-outline-success mt-4"
			onclick="location.href='goods.do'" style="width: 200px; margin-left: 30px;">
		<p>
			<br>
		</p>
	</div>



</div>


<br>

<br>


<br>


<br>


<br>

<br>

<br>

<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>