<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


	<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');


	.nav-item, .chat {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
</style>

	<style type="text/css">
		.navbar{   
			z-index: 110;   /* 헤더메뉴가 더 위로 오도록 수정 */
		}
		.contentDiv{  /* 내용부분 css */
			margin-left: 250px;
		}
		
	</style>

<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 마이페이지에서 왼쪽 메뉴바에 해당하는 페이지입니다
	(추후에 페이지 include 하여 마이페이지 왼쪽 메뉴로 사용) -->

	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">


    <!-- 스타일 css -->
   <style>
        #div1{
            /* background-color: skyblue; */
            width: 200px;
            float: left;
            text-align: center;
            margin-left: 10px;
            margin-right: 30px;
            margin-top: 100px;
            padding-right: 30px;
        }
        .left{
            color: black;
            background-color: ;
            border-radius: .25rem;
        }
        #sidebar{
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            z-index: 100;
            display: block;
            padding: 0 20px;
            overflow: hidden;
            /* background-color: #0059ab; */
            width: 230px;
            height: auto;
            border-right: groove;
        }
        
        #chatIcon{
        	font-size: 60px;
        	color: black;
        }

    </style>

    </style>

	<!-- ionicons 아이콘 사용을 위한 코드 -->
	<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>



</head>
<body>

    <div id="sidebar">
        <div id="div1">
        	<br>
        	<br>
        	<a href="chattingList.do"><ion-icon name="chatbubbles-outline" id="chatIcon"></ion-icon><br>
        	<label class="chat">1:1 대화</label></a>
        	<br><br>
            <ul class="nav flex-column">
                <li class="nav-item"><a class="nav-link active left" href="mydiary.do">나의 입양일기</a></li> <br>
                <li class="nav-item"><a class="nav-link active left" href="myAdoptList.do">내가 쓴 입양공고</a></li><br>
                <li class="nav-item"><a class="nav-link active left" href="myGoodsBuyList.do">구매 내역</a></li><br>
                <li class="nav-item"><a class="nav-link active left" href="myCartList.do">나의 장바구니</a></li><br>
                <li class="nav-item"><a class="nav-link active left" href="myMemberModityPw.do">회원정보 수정</a></li><br>
                <li class="nav-item"><a class="nav-link active left" href="myNoticeList.do">QnA</a></li><br>
            </ul>
        </div>
    </div>





</body>
</html>