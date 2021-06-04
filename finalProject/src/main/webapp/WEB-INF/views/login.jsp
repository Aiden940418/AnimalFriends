<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="style.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
	  <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
 
	
	<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');


	.main-container .login-button-wrap {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
	
	body > * {
	font-family: 'Do Hyeon', sans-serif;
		
	}
</style>




<!-- <script type="text/javascript">
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://localhost:8787/mvc/main.do'
    })
  }
  // 아래는 데모를 위한 UI 코드입니다.
  displayToken()
  function displayToken() {
    const token = getCookie('authorize-access-token')
    if(token) {
      Kakao.Auth.setAccessToken(token)
      Kakao.Auth.getStatusInfo(({ status }) => {
        if(status === 'connected') {
          document.getElementById('token-result').innerText = 'login success. token: ' + Kakao.Auth.getAccessToken()
        } else {
          Kakao.Auth.setAccessToken(null)
        }
      })
    }
  }
  function getCookie(name) {
    const value = "; " + document.cookie;
    const parts = value.split("; " + name + "=");
    if (parts.length === 2) return parts.pop().split(";").shift();
   
    
  }
  </script> -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">



function login() {
	
	var mId = $("#userId").val().trim();
	var mPw = $("#userPw").val().trim();
	console.log(mId+ "/"+ mPw);
	
	
var loginVal= {
		"mId":mId,
		"mPw":mPw
};


//ajax를 통해 로그인 처리 


if(mId == null || mId =="" || mPw ==null || mPw =="") {
	
	alert("ID 및 PW를 확인해 주세요");
	
}else{
	
	$.ajax({
		
		
		type:"post",
		url:"login.do",
		data: JSON.stringify(loginVal),
		contentType:"application/json",
		dataType:"json",
		success:function(msg) {
			
			if(msg.check == true) {
			location.href="main.do";
			
			}else{
				alert("아이디 및 비밀번호가 틀렸습니다. ");
			}
		},
		
		error:function() {
			alert("통신실패");	
		}
	});
}

}





</script>

  <style type="text/css">

  :root{
    --body-background-color: #ffffff;
    --font-color: #4e4e4e;
    --border-line-color : #dadada;
    --login-color: #007bff;
  }
  
  
  *{
    margin:0;
    padding:0;
  }
  
  body{
    background:var(--body-background-color);
  }
  
  .main-container{
    width:100%;
    display:flex;
    flex-direction:column;
    align-items:center;
    margin-top: 21px;
  }
  .main-container .main-wrap{
    width:768px;
  }
  .main-container .main-wrap .logo-wrap{
    padding-top:55px;
  }
  .main-container .main-wrap .logo-wrap img
  {
    width: 465px;
    height: 85px;
  }
  
  .main-container .main-wrap header .logo-wrap{
    display:flex;	
    flex-direction: column;
    align-items: center;
  }
  .login-input-section-wrap{
    display: flex;
    flex-direction: column;
    align-items: center;
    
  }
  
  .login-input-wrap{
    width: 350px;
    height :48px;
    border: solid 1px var(	--border-line-color );
    background: white;
  }
  .password-wrap{
    margin-top: 8px;
  }
  .login-input-wrap input{
    border: none;
    width: 330px;
    margin-top: 5px;
    font-size: 14px;
    margin-left: 9px;
    height: 36px;
  }
  .login-button-wrap {
    padding-top: 13px;
  }
   .login-button-wrap button{
    width: 350px;
    height :48px;
    font-size: 18px;
    background: var(--login-color);
    color: #ffffff;
 
    
    border: solid 1px var(--login-border-color);
  }
  .login-stay-sign-in{
    width: 465px;
    height: 52px;
    
    display: flex;
    font-size: 15px;
    color: #4e4e4e;
    align-items: center;
    justify-content: flex-start;
    border-bottom: solid 1px var(--border-line-color);
  }
  .login-stay-sign-in i{
    font-size: 25px;
    color: #9ba1a3;
  }
  .login-stay-sign-in span{
    padding-left: 5px;
    line-height: 25px;
  }
  
  .Easy-sgin-in-wrap{
  
    display: flex;
    flex-direction: column;
    align-items: center;

  
  }
  .Easy-sgin-in-wrap h2{
    font-size: 20px;
  }
  .Easy-sgin-in-wrap .sign-button-list
  {
    padding-top:25px;
    list-style: none;
    width: 350px;
    display: flex;
    flex-direction: column;
    align-items: center;

  }
  .Easy-sgin-in-wrap .sign-button-list li{
    padding-bottom: 10px;
    
  }
  .Easy-sgin-in-wrap .sign-button-list li button{
    width: 350px;
    height: 48px;
    border: solid 1px var(--border-line-color);
    text-align: center;
    background:  #007bff;
    color: #ffffff;
    
  }
  .Easy-sgin-in-wrap .sign-button-list li button span{
    padding-left: 20px;
    font-size: 16px;
  }

  .Easy-sgin-in-wrap .forget-msg{
    color:var(--font-color);
    font-size: 18px;
	
  }
    .Easy-sgin-in-wrap .sign-up{
    color:var(--font-color);
    font-size: 18px;
  }
  
  a {
  color : #138962;
  text-decoration: none;
  
  }
  
  a:hover {
  color : black;
  
  }
 
  
 

  </style>
</head>
<body>

	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
				<a href="main.do"><img src="resources/images/logo.png" 
					style="width: 200px; height: 200px; position: relative; top: -30px;"></a>
			</div>
		</header>
		<br>
		
				<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder=" ID" type="text" id="userId" name="mId"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder=" Password" type="password" id="userPw" name="mPw"></input>
			</div>
			<div class="d-grid gap-5 mt-2" style="width: 351px;">
				<button type="submit" class="btn btn-outline-success" onclick="login();">로그인</button>
			</div>
	
		</section>
		
	
		<section class="Easy-sgin-in-wrap">
			
	<!-- 		<a id="custom-login-btn" href="javascript:loginWithKakao()">
  <img
    src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
    width="222"
  />
</a> -->
<p id="token-result"></p>

  
			<div>			
				<span class="forget-msg text-success"><a href="findpw.do">비밀번호를 잊으셨습니까? |</a> </span>
				<span class="register text-success"><a href="signUpForm.do">회원가입</a></span>
			</div>
		</section>
		</div>
	</div>
  
  
  </body>
  </html>
  <!-- 여기는 footer -->
  
  