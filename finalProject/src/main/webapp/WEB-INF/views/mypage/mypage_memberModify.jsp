<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>


<!-- 우편번호 검색하는 로직  -->

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

	$(function(){
	
	$('input[type=button][name=addrbtn]').on('click',function(){
		
    	if($('#mAddr1').val() !=''){
	    	    $('#mAddr1').val('');
	    	    $('#mAddr3').val('');
	    	    
	
	}
	
	</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>





function execPostCode() {
		
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           $("[name=mAddr1]").val(data.zonecode);
           $("[name=mAddr2]").val(fullRoadAddr);
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}

//우편로직 끝 
	

</script>

</head>
<body>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<!-- 상단 제목부분 -->
		<div class="container text-center mt-5">
			<h1>회원 정보 수정</h1>
			<br>
		</div>
		<br>
		
		<!-- 회원정보 수정 폼 -->
		<div class="container" style="margin-left: 350px;">
		
		<form action="memberUpdate.do" method="POST">
		
			<input type="hidden" name="mNo" value="${login.mNo}">
			<table>
						
				<tr>
				<th>아이디</th>
				<td><input id="mId" type="text"  style="width:300px; height:40px" readonly="readonly" value="${login.mId}">
				</td>
				
				</tr>
				
				<tr>
				<th>비밀번호</th>
				<td><input class="mPw" type="password" id="pw" style="width:300px; height:40px" value="{login.mPw}" readonly="readonly">
				</td>
				</tr>
	
				<tr>
				<th>이름</th>
				<td><input type="text"  id="mName"  value="${login.mName}" readonly="readonly"style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>닉네임</th>
				<td><input type="text" id="mNick"  name="mNick" value="${login.mNick }" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>주소</th>
				<td><input type="text" id="mAddr1"	  name="mAddr1" value="${login.mAddr1}" style="width:100px; height:40px">
				<input class="btn btn-outline-success" type="button" name="addrbtn" value="주소검색"
				onclick="execPostCode();"
				style="font-size:20px">
				</td>
				
				</tr>
				
				<tr>
				<th>기본주소</th>
				<td><input type="text"  id="mAddr2" name="mAddr2" value="${login.mAddr2}"style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>상세주소</th>
				<td><input type="text"  id="mAddr3"	  name="mAddr3" value="${login.mAddr3}" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>전화번호</th>
				<td><input type="text" id="mPhone"  name="mPhone" value="${login.mPhone}" style="width:300px; height:40px"></td>
				
				</tr>
			
			
			</table>
			<div class="container text-center mt-5" style="margin-right:600px;">
			<button type="submit">완료</button>
			<button type="button">취소</button>
			</div>
				</form>	
			
			</div>
			
	

				
			</div>
	
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

</body>
</html>