<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <title>일반회원가입</title>
        
        
<html lang="en">

<style type="text/css">


	.id_input_re_1 {
	
		color : green;
		display: none;
		
		
		
	
	}
	
	
	
	
	.id_input_re_2 {
		color:red;
		display:none;
		
	
	
	}

</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');


	.navbar, .container, .wrap
	, .thumnailright , .footer {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
	
	
	
	
</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$("#idChk").click(function(){
 
 var query = { mId : $("#mId").val()};
 

 
 $.ajax({
  url : "idChk.do",
  type : "post",
  data : query,

  success : function(data) {
  
   if(data == 1) {
    $(".result .msg").text("사용 불가");
    $(".result .msg").attr("style", "color:#f00");    
   } else {
    $(".result .msg").text("사용 가능");
    $(".result .msg").attr("style", "color:#00f");
   }
  }
 });  // ajax 끝
});



/* $('#idChk').click(function(){
	
		var query = {mId : $("#mId").val()};
		
		
		$.ajax({
			
			
			url: "idChk.do",
			type: "post",
			data : query,
			success : function(data){
				
				
				if(data==1) {
					
					$(".result .msg").text("사용불가");
					$(".result .msg").attr("style", "color:#f00")
					
				}else {
					
					$(".result .msg").text("사용가능");
					$(".result .msg").attr("style", "color:#00f")
				}
			}
			
			
			
			
		});
	
	
	
	
	
});
 */

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
            <img src="resources/images/logo2.jpeg" id="logo" style="width:400px; height:200px" onclick="location.href='main.do'">
        </div>

            
       <!-- 회원선택 -->
            <div class="container mt-3" style="font-size:30px;">
				<input type="radio" name="mRole" value="1" checked="checked">일반회원
				<input type="radio" name="mRole" value="2" class="ms-4">보호소회원			
			
			</div>
			<br>
			<br>
			
			<div id="iMember">
			
			<form action="signUp.do" method="GET">
				<input type="hidden" name="mRole" value="1">
				<input type="hidden" name="mJoinYn" value="Y">

			
			<table style="margin-left:440px">
						
				<tr>
				<th>아이디</th>
				<td><input id="mId" type="text"  name="mId" style="width:300px; height:40px">
				</td>
				<td><input class="idChk btn btn-outline-success" type="button" name="idChk" id="idChk" style="font-size:20px" value="중복확인">
				</td>
				<td>
				<p class="result">
					<span class="msg">아이디를 확인해주세요.</span>
				
				</p>
		
				</td>
				</tr>
				
				<tr>
				<th>비밀번호</th>
				<td><input class="mPw" type="password"  name="mPw" id="pw" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>비밀번호 확인</th>
				<td><input type="password"  id="pw2" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>이름</th>
				<td><input type="text"  name="mName" 	style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>닉네임</th>
				<td><input type="text"  name="mNick" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>주소</th>
				<td><input type="text" id="mAddr1"	  name="mAddr1" style="width:100px; height:40px">
				<input class="btn-outline-success" type="button" name="idCheck" value="주소검색"
				onclick="execPostCode();"
				
				
				 style="font-size:20px">
				</td>
				
				</tr>
				
				<tr>
				<th>기본주소</th>
				<td><input type="text"  name="mAddr2" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>상세주소</th>
				<td><input type="text"  name="mAddr3" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>전화번호</th>
				<td><input type="text"  name="mPhone" style="width:300px; height:40px"></td>
				
				</tr>
			
				
			
			</table>
			
			<div class="container mt-5">
			
			<button class="btn-outline-success" type="submit" value="가입하기" onclick="DosignUp();">가입하기</button>
			<button class="btn-outline-success" type="button" value="뒤로가기" onclick="location.href='loginForm.do'">뒤로가기</button>
			
			
			</div> 
				</form>
			</div>
			
			
			<div id="sMember" style="display:none;">
			<form action="signUps.do" method="GET">
				<input type="hidden" name="mRole" value="2">
				<input type="hidden" name="mJoinYn" value="Y">
			
				<table style="margin-left:440px">
				<tr>
				<th>아이디</th>
				<td><input class="mId"type="text"  name="mId" style="width:300px; height:40px">
				</td>
				<td><input class="idChk btn-outline-success" type="button" name="idChk" value="중복체크" style="font-size:20px">
				</td>
				<td>
				<p class="result">
				<span class="msg">아이디를 확인해주세요.</span>
				</p>
				</td>
				</tr>
				
				<tr>
				<th>비밀번호</th>
				<td><input type="password"  name="mPw" id="pw3" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>비밀번호 확인</th>
				<td><input type="password"  id="pw4" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>대표자명</th>
				<td><input type="text"  name="mName" 	style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>보호소이름</th>
				<td><input type="text"  name="mNick" style="width:300px; height:40px">
				</td>
				</tr>
				
				<tr>
				<th>보호소 주소</th>
				<td><input type="text"  name="mAddr1" style="width:100px; height:40px">
				<input class="btn-outline-success" type="button" name="idCheck" value="주소검색"
				onclick="execPostCode();" style="font-size:20px">
				</td>
				
				</tr>
				
				<tr>
				<th>기본주소</th>
				<td><input type="text"  name="mAddr2" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>상세주소</th>
				<td><input type="text"  name="mAddr3" style="width:300px; height:40px"></td>
				</tr>
				
				<tr>
				<th>전화번호</th>
				<td><input type="text"  name="mPhone" style="width:300px; height:40px"></td>
				
				</tr>
				
				<tr>
				<th>사업자번호</th>
				<td><input type="text"  id="sBisNum" name="sBisNum" style="width:300px; height:40px"></td>
				
				</tr>
				
				<tr>
				<th>판매업번호</th>
				<td><input type="text"  id="sSellNum" name="sSellNum" style="width:300px; height:40px"></td>
				
				</tr>
				
				
			
					
			
			</table>
			
			<div class="container mt-5">
			
			<button class="btn-outline-success" type="submit" value="가입하기">가입하기</button>
			<button class="btn-outline-success" type="button" value="뒤로가기" onclick="location.href='loginForm.do'">뒤로가기</button>
			
			
			</div> 
			</form>
			
			</div>
			
			
			

			

			</div>
			
</html>
