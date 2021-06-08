<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <title>일반회원가입</title>
        
        
<html lang="en">


<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');


	.navbar, .container, .wrap
	, .thumnailright , .footer {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
	
	
	
	
</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script>


//일반회원가입 유효성 검사 
$(document).ready(function() {

 		$('#submit2').click(function () {
 		
 			 if ($('#mId').val() == '') {
				 alert("아이디를 입력해주세요");
				 return false;
			 }else if($('#pw').val() == '') {
				 
				 alert("비밀번호를 입력해주세요");
				 return false;
			 }else if($('#pw2').val() == '') {
				 
				 alert("비밀번호확인을 입력해주세요");

				 return false;
			 }else if($('#mNick').val() == '') {
				 alert("닉네임을 입력해주세요");
				 return false;
			 }else if($('#mEmail').val() == '') {
				 alert("이메일을 입력해주세요");
				 return false;
			 }else if($('#mAddr1').val() == '') {
				 alert("우편번호를 입력해주세요");
				 return false;
			 }else if($('#mAddr2').val() == '') {
				 alert("기본주소를 입력해주세요");
				 return false;

			 }else if($('#mAddr3').val() == '') {
				 alert("상세주소를 입력해주세요");
				 return false;

			 }else if($('#mPhone').val() == '') {
				 alert("전화번호를 입력해주세요");
				 return false;

			 }else {
				 return true;
			 }
 			 
 		
		
		});
 		
});


</script>

<script>

//기업 회원가입 유효성 검사 

$(document).ready(function() {

 		$('#submits').click(function () {
 		
 			 if ($('#sId').val() == '') {
				 alert("아이디를 입력해주세요");
				 return false;
			 }else if($('#pw3').val() == '') {
				 
				 alert("비밀번호를 입력해주세요");
				 return false;
			 }else if($('#pw4').val() == '') {
				 
				 alert("비밀번호확인을 입력해주세요");

				 return false;
			 }else if($('#sEmail').val() == '') {
				 alert("이메일을 입력해주세요");
				 return false;
			 }else if($('#sName').val() == '') {
				 alert("대표자 이름을 입력해주세요");
				 return false;
			 }else if($('#sNick').val() == '') {
				 alert("보호소 이름을 입력해주세요");
				 return false;
			 }else if($('#sAddr1').val() == '') {
				 alert("우편번호를 입력해주세요");
				 return false;
			 }else if($('#sAddr2').val() == '') {
				 alert("기본주소를 입력해주세요");
				 return false;

			 }else if($('#sAddr3').val() == '') {
				 alert("상세주소를 입력해주세요");
				 return false;

			 }else if($('#sPhone').val() == '') {
				 alert("전화번호를 입력해주세요");
				 return false;

			 }else if($('#sBisNum').val() == ''){
			 
				 alert("사업자 번호를 입력해주세요");
				 return false;			 
			 
			 }else if($('#sSellNum').val() == ''){
			 
				 alert("판매업 등록 번호를 입력해주세요");
				 return false;			 
			 
			 }else {
				 return true;
			 }
 			 
 		
		
		});
 		
});


</script>
 


<script type="text/javascript">

//아이디 중복체크 ajax
function fn_idChk(){
	$.ajax({
		url : "idChk.do",
		type : "post",
		dataType : "json",
		data : {"mId" : $("#mId").val()},
		success : function(data){
			
			 if ($("#mId").val() == "") {
				 alert("아이디를 입력해주세요")
			 }else if(data == 0) {
				$("#idChk").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			 }
				
			 if(data == 1){
				alert("중복된 아이디입니다.");
			}

			
		}
	})
};

	

	

// 일반회원가입비밀번호 일치 확인 
$(function(){

	//비밀번호 확인
		$('#pw4').blur(function(){
		   if($('#pw3').val() != $('#pw4').val()){
		    	if($('#pw4').val()!=''){
			    alert("비밀번호가 일치하지 않습니다.");
		    	    $('#pw4').val('');
		          $('#pw4').focus();
		       }
		    }
		})  	   
	});
	



//기업회원가입 비밀번호 일치 확인 
				
$(function(){
	

	//비밀번호 확인
		$('#pw2').blur(function(){
		   if($('#pw').val() != $('#pw2').val()){
		    	if($('#pw2').val()!=''){
			    alert("비밀번호가 일치하지 않습니다.");
		    	    $('#pw2').val('');
		          $('#pw2').focus();
		       }
		    }
		})  	   
	});
	
	
	
	//라디오버튼 누르면 일반회원과 기업회원 보여지는 로직 
	$(function(){
	
	$('input[type=radio][name=mRole]').on('click',function(){
		
		var chkValue = $('input[type=radio][name=mRole]:checked').val();
		
		
		if(chkValue == '1') {
			$('#iMember').css('display','block');
			$('#sMember').css('display','none');
			
			
		}else {
			
			$('#iMember').css('display','none');
			$('#sMember').css('display','block');
			$('#mAddr1').val('');
		}
		
	})
	});

</script>


<!-- 우편번호 검색하는 로직  -->
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
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

  </head>        

    <body>
    
    <div class="container text-center mt-5"> 
    
    
		<!-- 상단 logo  -->
        <div class="mt-5">
            <img src="resources/images/logo.png" id="logo" style="width: 200px; height: 200px; position: relative; top: -30px;" 
            	onclick="location.href='main.do'">
        </div>

            
       <!-- 회원선택 -->
            <div class="container mt-3" style="font-size:30px;">
				<input type="radio" name="mRole" value="1" checked="checked">일반회원
				<input type="radio" name="mRole" value="2" class="ms-4">보호소회원			
			
			</div>
	<!-- 회원선택 끝 -->
			<br>
			<br>
			
			
		<!--  일반회원 가입 form -->
		
			<div id="iMember">
			<form action="signUp.do" method="GET">
			
				<input type="hidden" name="mRole" value="1">
				<input type="hidden" name="mJoinYn" value="Y">

			
			<table style="margin-left:400px">
			
						
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">아이디</button></th>
				<td><input id="mId" type="text"  name="mId" style="width:300px; height:40px">
				
				</td>
				<td><button class="idChk btn btn-outline-success" onclick="fn_idChk();" value="N"type="button" name="idChk" id="idChk" style="font-size:20px">중복확인</button>
				</td>
				</tr>
					
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">비밀번호</button></th>
				<td><input class="mPw" type="password"  name="mPw" id="pw" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">비밀번호 확인</button></th>
				<td><input type="password"  id="pw2" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이름</button></th>
				<td><input type="text"  id="mName" name="mName" 	style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">닉네임</button></th>
				<td><input type="text" id="mNick"  name="mNick" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이메일</button></th>
				<td><input type="text" id="mEmail"  name="mEmail" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">주소</button></th>
				<td><input type="text" id="mAddr1"	  name="mAddr1" style="width:100px; height:40px">
				<input class="btn btn-outline-success" type="button" name="idCheck" value="주소검색"
				onclick="execPostCode();"
				
				
				 style="font-size:20px">
				</td>
				
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">기본주소</button></th>
				<td><input type="text"  id="mAddr2"	 name="mAddr2" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">상세주소</button></th>
				<td><input type="text"  id="mAddr3"	  name="mAddr3" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">전화번호</button></th>
				<td><input type="text" id="mPhone"  name="mPhone" style="width:300px; height:40px"></td>
				
				</tr>
			
				
			
			</table>
			
			<div class="container mt-5">
			
			<button class="btn btn-outline-success" type="submit" id="submit2" value="일반가입하기">일반가입하기</button>
			<button class="btn btn-outline-success" type="button" value="뒤로가기" onclick="location.href='loginForm.do'">뒤로가기</button>
			
			
			</div>
				</form> 
			</div>

			
		
			<div id="sMember" style="display:none;">
			<form action="signUpSmember.do" method="GET">
			
				<input type="hidden" name="mRole" value="2">
				<input type="hidden" name="mJoinYn" value="Y">
			
				<table style="margin-left:400px">
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">아이디</button></th>
				<td><input class="mId"type="text" id="sId" name="mId" style="width:300px; height:40px">
				</td>
				<td><button class="btn btn-outline-success" onclick="fn_sidChk();" id="sidChk" type="button" name="idChk" value="N" style="font-size:20px">중복확인</button>
				
			<script type="text/javascript">
			
			//아이디 중복체크 ajax
			function fn_sidChk(){
				$.ajax({
					url : "idChk.do",
					type : "post",
					dataType : "json",
					data : {"mId" : $("#sId").val()},
					success : function(data){
						
						 if ($("#sId").val() == "") {
							 alert("아이디를 입력해주세요")
						 }else if(data == 0) {
							$("#sidChk").attr("value", "Y");
							alert("사용가능한 아이디입니다.");
						 }
							
						 if(data == 1){
							alert("중복된 아이디입니다.");
						}
			
						
					}
				})
			};
							
			</script>
				
				
				</td>
				
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">비밀번호</button></th>
				<td><input type="password"  name="mPw" id="pw3" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">비밀번호 확인</button></th>
				<td><input type="password"  id="pw4" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이메일</button></th>
				<td><input type="text"  name="mEmail" style="width:300px; height:40px" id="sEmail">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">대표자명</button></th>
				<td><input type="text"  name="mName" 	style="width:300px; height:40px" id="sName">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">보호소이름</button></th>
				<td><input type="text"  name="mNick" style="width:300px; height:40px" id="sNick">
				</td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">보호소 주소</button></th>
				<td><input type="text"  name="mAddr1" style="width:100px; height:40px" id="sAddr1">
				<input class="btn btn-outline-success" type="button" name="idCheck" value="주소검색"
				onclick="execPostCode();" style="font-size:20px">
				</td>
				
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">기본주소</button></th>
				<td><input type="text"  name="mAddr2" style="width:300px; height:40px" id="sAddr2"></td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">상세주소</button></th>
				<td><input type="text"  name="mAddr3" style="width:300px; height:40px" id="sAddr3"></td>
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">전화번호</button></th>
				<td><input type="text"  name="mPhone" style="width:300px; height:40px" id="sPhone"></td>
				
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">사업자번호</button></th>
				<td><input type="text"  id="sBisNum" name="sBisNum" style="width:300px; height:40px"></td>
				
				</tr>
				
				<tr>
				<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">판매업번호</button></th>
				<td><input type="text"  id="sSellNum" name="sSellNum" style="width:300px; height:40px"></td>
				
				</tr>
				
				
			
					
			
			</table>
			
			<div class="container mt-5">
			
			<button class="btn btn-outline-success" type="submit" id="submits" value="보호소가입하기">보호소가입하기</button>
			<button class="btn btn-outline-success" type="button" value="뒤로가기" onclick="location.href='loginForm.do'">뒤로가기</button>
			
			
			</div> 

				</form>
			</div>
		
			
			
			

			

			</div>
			
</html>
