<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!doctype html>
<html lang="en">

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/popper.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
 
<!-- ionicons 사용 위한 코드 -->
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 하트 아이콘 사용을 위한 코드 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- 메뉴 사이드바 style.css 저장 링크 선언 -->
 	<link rel="stylesheet" href="resources/css/style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
 
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');
 	body > * {
 		font-family: 'Do Hyeon', sans-serif;
 	}
 	
 	.navbar, .container, .wrap
	, .thumnailright , .footer {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
	
	.HeaderProfileImgDiv {
				width: 104px;
				height: 110px; 
				border-radius: 50%;
				overflow: hidden;
				border: 3px	solid #54BD54;
				position: relative;
   				left: 52px;
    			top: -17px;
			}
	
	.Headerprofile {
	    width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	
	html{
		height: 100%;
	}
	
	body{
  		margin:0; 
  		width:100%; 
  		height:100%;
 	}
	
/* 	.contentDiv {
		min-height: 100%;
		position: relative;
		padding-bottom: 19px;
		
	} */
	
		
	footer{
	 	position: relative;
	 	bottom: 0;
		left: 0;
		right: 0;
	}
	
	.dropdown-toggle::after {
    position: absolute;
    top: 50%;
    
    }
	
/* 	* {
		box-sizing: border-box;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
	}
	 */
</style>
<script>

	$(document).on("click", '.managerTab', function(){
		  $('#pageSubmenu').attr('class','collapse list-unstyled show');
		  console.log('왜 안되냐');
	});


</script>


<body>
	<div class="wrapper d-flex align-items-stretch">
		<nav id="sidebar" class="" style="">
			<div class="p-4 pt-5">
			
				<c:if test="${empty prf }">
					 <a class="navbar-brand img logo rounded-circle mb-5 text-center" href="logo.do"><img src="resources/images/logo.png" style="width:85px; height:85px;"></a>
				</c:if>
				<c:if test="${!empty prf }">
						<div class="col-md-6 HeaderProfileImgDiv">
							<a href="mydiary.do"><img class="Headerprofile" src="resources/${prf.profileImg }"></a> 
						</div>
				</c:if>
				<c:if test="${!empty login}">
						<div class="text-center">
       					 <p style="color: #288C28; font-size:22px;"><b>ID_${login.mId}</b> <br> <b>닉냄_${login.mNick}</b></p>
						</div>
				</c:if>
						  		
	        <ul class="list-unstyled components mt-5" style="margin-top:300px;">
	          <li>
	              <a href="main.do">Home</a>
	          </li>
	          <li>
	              <a href="adopt.do">입양공고</a>
	          </li>
	          <li>
	              <a href="shelter.do">동물보호시설</a>
	          </li>
	          <li>
	              <a href="goodsList.do">GOODS</a>
	          </li>
	          <li>
	              <a href="diaryList.do">입양일기</a>
	          </li>
	          <li>
	          <c:if test="${login.mRole == 3 }">
              <a href="#pageSubmenu" role="button" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">관리자</a>
              <ul class="collapse list-unstyled" id="pageSubmenu">
                <li class="mngLi">
                    <a href="adminAdopt.do" class="managerTab">입양공고 관리</a>
                </li>
                <li class="mngLi">
                    <a href="adminGoodsList.do" class="managerTab">GOODS 관리</a>
                </li>
                <li class="mngLi">
                    <a href="adminDiary.do" class="managerTab">입양일기 관리</a>
                </li>
                <li class="mngLi">
                    <a href="adminUserList.do" class="managerTab">회원 관리</a>
                </li>
                <li class="mngLi">
                    <a href="adminQnaList.do" class="managerTab">QnA</a>
                </li>
              </ul>
              </c:if>
              
	          </li>
	          <li>
              <a href="#mypagesubmenu" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle">MyPage</a>
              <ul class="collapse list-unstyled" id="mypagesubmenu">
                <li>
                    <a href="mydiary.do">나의 입양일기</a>
                </li>
                <li>
                    <a href="myAdoptList.do?mNo=${login.mNo}">내가 쓴 입양공고</a>
                </li>
                <li>
                    <a href="orderList.do">구매내역</a>
                </li>
                <li>
                    <a href="cartList.do?mNo=${login.mNo}">나의 장바구니</a>
                </li>
                <li>
                    <a href="myMemberModityPw.do">회원정보 수정</a>
                </li>
                <li>
                    <a href="myQnaList.do">QnA</a>
                </li>
                
              </ul>
	          </li>
	          
	        </ul>
			

	      </div>
    	</nav>

	<!-- Page 내용 시작 -->
      <div id="content" class="p-4 p-md-5">
        <!-- 페이지 상단 메뉴바 start -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">

            <button type="button" id="sidebarCollapse" class="btn btn-primary">
              <i class="fa fa-bars"></i>
              <span class="sr-only">Toggle Menu</span>
            </button>
            <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
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



<!--             <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Portfolio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
              </ul>
            </div> -->
          </div>
        </nav>
        <!-- 페이지 상단 메뉴바 end -->

        
