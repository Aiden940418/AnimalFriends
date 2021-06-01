<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- header -->
	<%@ include file="../includes/header_R.jsp" %>

<title>회원 정보 수정</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>
	
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
/* function fn_pwChk(){
	$.ajax({
		url : "pwChk.do",
		type : "post",
		dataType : "json",
		data : {"mPw" : $("#mPw").val()},
		success : function(data){
			
			 if ($("#mPw").val() == "") {
				 alert("비밀번호를 입력해주세요")
			 }else if(data == 0) {
				alert("비밀번호가 틀렸습니다.");
			 }
				
			 if(data == 1){
				alert("비밀번호가 맞습니다.");
			}

			
		}
	})
}; */

</script>

<style>
	#infoModf {
		position: relative;
	    top: 55px;
	
	}
	
	 #secCtn {
	 	position: relative;
		top: 150px;
		height:400px;	 	
	 }
	 


</style>



	<!-- 페이지 내용 부분 -->
<div class="contentDiv mb-5">
		
		<!-- 상단 제목부분 -->
		
	<div class = "container text-center" id="infoModf">
		<h1 class="text-center">회원 정보 수정</h1>
	</div>
			
	<div class="container text-center" id="secCtn">
		<div class="text-center" style="width:400px; margin: 0 auto;">
			<form action="pwChk.do" method="POST">
				<input type="hidden" name="mId" value="${login.mId}">
				<input type="hidden" name="mRole" value="${login.mRole}">
				<div class="input-group mb-3 col">
					<span class="input-group-text" id="inputGroup-sizing-default">
						<ion-icon name="key-outline" style="font-size:25px;"></ion-icon>
					</span>
					<input name="mPw"type="password" class="form-control" id="mPw"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default">
					<button type="submit" class="btn btn-secondary ms-2" id="pwChk" style="width:70px">확인</button>
						
				</div>
				</form>
		</div>
	</div>
	<div class="container mb-5"></div>

</div>


<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>



