<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- header -->
	<%@ include file="../includes/header_R.jsp" %>

<title>회원 탈퇴</title>

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
	#infoDel{
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
	<div class = "container text-center" id="infoDel">
		<h1 class="text-center">비밀번호 변경</h1>
	</div>
		
	<div class="container text-center" id="secCtn">
			<div class="text-center"  style="width: 500px; margin: 0 auto;">
				<form action="memberPwUpdate.do" method="POST">
				<input type="hidden" name="mId" value="${login.mId}">
				<div class="input-group mb-3 col">
					<span class="input-group-text" id="inputGroup-sizing-default">
						<ion-icon name="key-outline" style="font-size:25px; width=:170px;"></ion-icon>
					새로운 비밀번호 </span>
					<input name="mPw"type="password" class="form-control" id="mPw" style="width:170px"><br>
								<span class="input-group-text" id="inputGroup-sizing-default">
						<ion-icon name="key-outline" style="font-size:25px;"></ion-icon>
					새로운 비밀번호 확인</span>
					<input name="mPw2"type="password" class="form-control" id="mPw2" style="width:200px">
					
					
					<button type="submit" class="btn btn-secondary ms-2" id="pwChk" style="width:70px" onclick="button_event();">확인</button>
						
						<script>
						$(function(){
							

							//비밀번호 확인
								$('#mPw2').blur(function(){
								   if($('#mPw').val() != $('#mPw2').val()){
								    	if($('#mPw2').val()!=''){
									    alert("비밀번호가 일치하지 않습니다.");
								    	    $('#mPw2').val('');
								          $('#mPw2').focus();
								       }
								    }
								})  	   
							});
						
						
						</script>
						
						<script type="text/javascript">

						function button_event(){
						if (confirm("비밀번호 변경 합니다.") == true){    //확인
						    document.form.submit();
						}else{   //취소
						    return;
						}
						}
						</script>


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

	
	
	
