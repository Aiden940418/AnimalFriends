<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!doctype html>
<html lang="en">

<script type="text/javascript">
	




</script>



<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');
	

	.navbar, .container, .wrap
	, .thumnailright , .footer {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
	
	
</style>
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
              <a class="nav-link" href="goods.do">GOODS</a>
            </li>

            <li class="nav-item" style="font-size:20px;">
              <a class="nav-link" href="diaryList.do">입양일기</a>
            </li>
           
           <c:if test="${login.mRole == 1 }">
            <li class="nav-item" style="font-size:20px;">
              <a class="nav-link" href="admin.do">관리자</a>
            </li>
            
            </c:if>
          </ul>
          <div id="loginBtn">
          
          <c:if test="${login == null }">

          <a class="btn btn-outline-success mx-2" href="loginForm.do" id="loginBtn" role="button">로그인</a>
          </c:if>
          <c:if test="${login !=null }">
          <label>${{login.mNick}}님 로그인 되었습니다.</label>
          <a class="btn btn-outline-success mx-2" href="logout.do" id="logoutBtn" role="button">로그아웃</a>
          </c:if>
          <c:if test="${login !=null }">
          <a class="btn btn-outline-success" href="mydiary.do" role="button">마이페이지</a>
          </c:if>
         </div>
        </div>
      </div>
    </nav>
    