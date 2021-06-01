<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!doctype html>
<html lang="en">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>


<!-- ionicons 사용 위한 코드 -->
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 하트 아이콘 사용을 위한 코드 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');
	

	.navbar, .container, .wrap
	, .thumnailright , .footer {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
	
	html{
		height: 100%;
	}
	
	body{
  		margin:0; 
  		width:100%; 
  		height:100%;
 	}
	
	.contentDiv {
		min-height: 100%;
		position: relative;
		padding-bottom: 19px;
		
	}
	
	footer{
	 	position: relative;
	 	bottom: 0;
		left: 0;
		right: 0;
  		background: #333;
	  	color:#fff;
	}
	
	* {
		box-sizing: border-box;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
	}
	
	
	
	
</style>


<script type="text/javascript">
	// 전역변수 설정
	var socket  = null;
	$(document).ready(function(){
	    // 웹소켓 연결
	    sock = new SockJS("<c:url value='/notice'/>");
	    socket = sock;
	
	    // 데이터를 전달 받았을때 
	    sock.onmessage = onMessage; // toast 생성
	    
	});
	
	// toast 생성 및 추가
	function onMessage(evt){
	    var data = evt.data;
	    var prevToast = document.getElementById('toast');
	    
	    //이전에 뜬 알림이 있다면 지움
	    if(prevToast != null){
	    	prevToast.remove();
	    }
	    
	    
	    //toast 생성
	    let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true' id='toast' style='width:300px; height:80px;'>";
	    toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='me-auto'> 알림</strong>";
	    toast += "<small>방금</small><button type='button' class='btn-close' data-bs-dismiss='toast' aria-label='Close'></button></div>";
	    toast += "<div class='toast-body'>" + data + "</div></div>";
	    $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가
	    $(".toast").toast({"animation": true, "autohide": false});
	    $('.toast').toast('show');
	};	
	
	
</script>


  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background-color: #EBEBEB;">
      <div class="container-fluid">
        <a class="navbar-brand ms-4" href="logo.do"><img src="resources/images/logo.png" style="width:70px; height:70px;"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item" style="font-size:30px;">
              <a class="nav-link active" aria-current="page" href="#"></a>
            </li>
            <li class="nav-item " style="font-size:20px;">
              <a class="nav-link" href="adopt.do">입양공고</a>
            </li>
            <li class="nav-item" style="font-size:20px;">
              <a class="nav-link" href="shelter.do">동물보호시설</a>
            </li>
            <li class="nav-item" style="font-size:20px;">
              <a class="nav-link" href="goodsList.do">GOODS</a>
            </li>

            <li class="nav-item" style="font-size:20px;">
              <a class="nav-link" href="diaryList.do">입양일기</a>
            </li>
           
           <c:if test="${login.mRole == 3 }">
            <li class="nav-item" style="font-size:20px;">
              <a class="nav-link" href="adminAdopt.do">관리자</a>
            </li>
            
            </c:if>
          </ul>
          
          <!-- 웹소켓 알림 부분 -->
      	  <div id="msgStack" ></div>
      	
          <div id="loginBtn">
          
          <c:if test="${login == null }">

          <a class="btn btn-outline-success mx-2" href="loginForm.do" id="loginBtn" role="button">로그인</a>
          </c:if>
          <c:if test="${login !=null }">
          <label><b>${login.mNick}</b>님 로그인 되었습니다.</label>
          <a class="btn btn-outline-success mx-2" href="logout.do" id="logoutBtn" role="button">로그아웃</a>
          </c:if>
          <c:if test="${login !=null }">
          <a class="btn btn-outline-success" href="mydiary.do" role="button">마이페이지</a>
          </c:if>
         </div>
        </div>
      </div>
      
      
		
      
      
    </nav>
    
    </body>
    </html>
    