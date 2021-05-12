<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- ionicons 사용 위한 코드 -->
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<style type="text/css">
	h1 {
		text-align: center;
		margin-top:20px;
	    margin-bottom:50px;
		margin-top: 20px;
		}
		
		
</style>



<script type="text/javascript">
	var isEnd = false;
	var number = 4;	
	
	$(function(){
	    $(window).scroll(function(){
	        
	    	//스크롤 바닥에 도달하면 실행
	        if( $(window).scrollTop() == $(document).height() - $(window).height() ){
	            fetchList();
	            number++;
	        }
	    })
	    
	})
	
	var fetchList = function(){
	    if(isEnd == true){
	        return;
	    }
	    
	    $.ajax({
	        url: "diaryListScroll.do",
	        type: "GET",
	        data : {'number' : number}, 
	        success: function(result){
	        	console.log(result);
	        	
	        	scrollPrint(result);
	        	
	        }
	    });
	}
	
	function scrollPrint(result) {
		var addHtml = "<div class=\"row\">\r\n" + 
		"		\r\n" + 
		"			<div class=\"col-2\"></div> <!-- 좌우 간격 맞추기 용도 -->\r\n" + 
		"				\r\n" + 
		"				<div class=\"col ms-4 my-3\">\r\n" + 
		"				\r\n" + 
		"					<!-- 입양일기 카드(박스) 부분 -->\r\n" + 
		"					<div class=\"card border-success mb-3 text-dark\" style=\"width: 800px;\">\r\n" + 
		"						<div class=\"card-header bg-transparent border-success\">${dto.mnick}</div>\r\n" + 
		"						\r\n" + 
		"						<img class=\"card-img-top\" src=\"resources/images/adopt_cat1.jpeg\">\r\n" + 
		"						\r\n" + 
		"						<ul class=\"list-group list-group-flush\">\r\n" + 
		"							<li class=\"list-group-item\">\r\n" + 
		"								<div class=\"row\">\r\n" + 
		"									<div class=\"col\">\r\n" + 
		"										<ion-icon name=\"heart-outline\" style=\"font-size:25px;\"></ion-icon>\r\n" + 
		"										<ion-icon name=\"heart\" style=\"font-size:25px;\"></ion-icon>\r\n" + 
		"										좋아요\r\n" + 
		"									</div>\r\n" + 
		"									<div class=\"col text-end\">\r\n" + 
		"										<ion-icon name=\"person-add-outline\" style=\"font-size:25px;\"></ion-icon>\r\n" + 
		"										<ion-icon name=\"person-add\" style=\"font-size:25px;\"></ion-icon>\r\n" + 
		"										팔로우\r\n" + 
		"									</div>\r\n" + 
		"								</div>\r\n" + 
		"							</li>\r\n" + 
		"						</ul>\r\n" + 
		"						\r\n" + 
		"						<div class=\"card-body text-dark\" style=\"height: 100px;\">\r\n" + 
		"							<h5 class=\"card-title\">${dto.dcontent }</h5>\r\n" + 
		"							<p class=\"card-text\">${dto.ddateToChar }</p>\r\n" + 
		"						</div>\r\n" + 
		"						\r\n" + 
		"						<div class=\"card-footer bg-transparent border-success\">\r\n" + 
		"							<form action=\"\">\r\n" + 
		"								<input type=\"text\" style=\"width: 700px; height: 38px;\">\r\n" + 
		"								<button type=\"submit\" class=\"btn btn-outline-success ms-1 float-end\">등록</button>\r\n" + 
		"							</form>\r\n" + 
		"							<br>여기에 댓글<br>여기에 댓글<br>여기에 댓글<br>여기에 댓글<br>\r\n" + 
		"						</div>\r\n" + 
		"					</div>\r\n" + 
		"				\r\n" + 
		"				\r\n" + 
		"				</div>\r\n" + 
		"				\r\n" + 
		"			</div>";
		
		$('#scrollPrintHere').append(addHtml);
	}
	
	
</script>






</head>
<body>

	<!-- header -->
	<%@ include file="../includes/header.jsp"%>
	
	<!-- 내용 -->
	<div class="container mt-3">
	
	<h1 class="mt-4">입양 일기</h1>
	
		
		<!-- 입양일기 리스트 반복하여 화면에 출력 -->
		<c:forEach items="${list }" var="dto">
		
			<div class="row">
		
			<div class="col-2"></div> <!-- 좌우 간격 맞추기 용도 -->
				
				<div class="col ms-4 my-3">
				
					<!-- 입양일기 카드(박스) 부분 -->
					<div class="card border-success mb-3 text-dark" style="width: 800px;">
						<div class="card-header bg-transparent border-success">${dto.mnick}</div>
						
						<img class="card-img-top" src="resources/images/adopt_cat1.jpeg">
						
						<ul class="list-group list-group-flush">
							<li class="list-group-item">
								<div class="row">
									<div class="col">
										<ion-icon name="heart-outline" style="font-size:25px;"></ion-icon>
										<ion-icon name="heart" style="font-size:25px;"></ion-icon>
										좋아요
									</div>
									<div class="col text-end">
										<ion-icon name="person-add-outline" style="font-size:25px;"></ion-icon>
										<ion-icon name="person-add" style="font-size:25px;"></ion-icon>
										팔로우
									</div>
								</div>
							</li>
						</ul>
						
						<div class="card-body text-dark" style="height: 100px;">
							<h5 class="card-title">${dto.dcontent }</h5>
							<p class="card-text">${dto.ddateToChar }</p>
						</div>
						
						<div class="card-footer bg-transparent border-success">
							<form action="">
								<input type="text" style="width: 700px; height: 38px;">
								<button type="submit" class="btn btn-outline-success ms-1 float-end">등록</button>
							</form>
							<br>여기에 댓글<br>여기에 댓글<br>여기에 댓글<br>여기에 댓글<br>
						</div>
					</div>
				
				
				</div>
				
			</div>
		
		</c:forEach>				



		<div id="scrollPrintHere"></div>
			
		
		
		
		
		
		
		
		
	
	</div>

</body>
</html>