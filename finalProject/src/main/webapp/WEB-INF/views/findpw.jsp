<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
 

<script>
	$(function(){
		$("#findBtn").click(function(){
			$.ajax({
				url: "findpw2.do",
				type : "POST",
				data : {
					mId : $("#mId").val(),
					mEmail : $("#mEmail").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');
 * {
 	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
 }

.mybtn{
  width:150px;
  height:40px;
  padding:0;
  display:inline; 
  border-radius: 4px; 
  background: #212529;
  color: #fff;
  margin-top: 20px;
  border: solid 2px #212529; 
  transition: all 0.5s ease-in-out 0s;
}
.mybtn:hover .mybtn:focus {
  background: white;
  color: #212529;
  text-decoration: none;
}
</style>
<title>비밀번호 찾기</title>
</head>
<body>
	<div class="container text-center mt-5">
		<div class="container text-center" style="width: 382px;height: 456.3px;margin-left: 464px;margin-top: 190px;">
			<div class="container text-center">
				<h2 style="font-family: 'Do Hyeon'; margin-bottom: 17px;">비밀번호 찾기</h2>
			</div>
			<div>
				<p>
					<label style="font-size: 25px;">아이디</label>
					<input style="width: 210px;font-size: 16px;text-align: center;position: relative;top: -4px;" 
							type="text" id="mId" name="mId" placeholder="회원가입한 아이디를 입력하세요" required>
				</p>
				<p>
					<label style="font-size: 25px;">이메일</label>
					<input style="width: 210px;font-size: 15px;text-align: center;position: relative;top: -4px;"
						 type="text" id="mEmail" name="mEmail" placeholder="회원가입한 이메일주소를 입력하세요" required>
				</p>
				<p class="w3-center" style="position:relative; top: -12px;">
					<button type="button" id="findBtn" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">찾기</button>
					<button type="button" onclick="location.href='loginForm.do';" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">로그인으로</button>
				</p>
			</div>
		</div>
	</div>
</body>
</html>