<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %> 
  

<%@ include file="../includes/header_R.jsp" %>   

	
 
 <title>리뷰 보기 상세</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>
 
 

	
<style type="text/css">

.wrap {
	
	top: 50%;
	left: 50%;

	text-align: center;
}

#chat {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	margin: 20px auto;
	max-width: 200px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
}

#chat.button {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

#chat.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}

</style>
	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		
		<div class="container text-center">
			<h1 class="display-5 mt-5">리뷰 보기 상세</h1><br><hr>
			
			<button type="button" class="btn btn-outline-success float-end ms-1" onclick="location.href='mygoodsReviewDelete.do?gRewNo=${review.gRewNo}'">삭제하기</button>
			<button type="button" class="btn btn-outline-success md-5 float-end ms-1" onclick="location.href='mygoodsRevewUpdateForm.do?gRewNo=${review.gRewNo}'">수정하기</button>
			<button type="button" class="btn btn-outline-success md-5 float-end " onclick="location.href='goodsList.do?mNo=${login.mNo}'">목록보기</button>
		
			<!-- header완료 -->
		
			<br>
		</div>
		<div class="container text-center mt-5">
			<h1>${review.gRewTitle }</h1><br>
		</div>
		<div class="container" style="margin-left:250px;">
			<span>등록날짜:&nbsp;${review.gRewDate}&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span>작성자:&nbsp;${review.gRewWriter }&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
	
		<br>
		<br>
	
		<!-- 본문내용 시작 -->
	
		<div class="container text-center mt-5">
			<textarea class="container text-center display-7 "style=";outline:none; resize: none; 
			border:none" readonly="readonly" rows="7px">${review.gRewContent }</textarea>
		</div>
		
	</div>
	

	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>