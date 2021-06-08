<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <title>애니멀프랜즈</title>
 <%@ include file="includes/header_R.jsp" %>  
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
 <style>
 @import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');

	.carousel-caption, .body{
	
	font-family: 'Do Hyeon', cursive;
 	font-size:  80px;
	color: black;
	}
	
 </style>
 
 
 <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>

	     
  <!-- Page Content  -->
        <!-- carousle -->

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="resources/images/mainImg1.jpeg" class="d-block" style="width:100%; height:550px;" alt="...">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <div class="carousel-item">
             <img src="resources/images/mainImg10.jpeg" class="d-block" style="width:100%; height:550px; alt="...">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <div class="carousel-item">
             <img src="resources/images/mainImg11.jpeg" class="d-block" style="width:100%; height:550px; alt="...">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
 
    <!-- 메인 작성 -->


          <!-- Content section 1-->
        <section id="scroll">
        
        <div class="body container text-center mt-5" style="margin-top: 50px;">
        
        
        	<img src="resources/images/logo1.png" style="width:300px;">
        	<p class="mt-3"style="font-size:60px; font-family:Do Hyeon;">애니멀 프렌즈란?</p>
        
        
        </div>
        
        <div class="container text-center mt-3">
        
     <p>애니멀프렌즈는 간편하고 쉽게 개인간의 입양을 도와주는 사이트입니다.<br>
파양, 유기된 동물들이 안전하게 보호받고 생활할 수 있도록 따뜻한 보금자리가 되어주고 싶습니다.</p>
       
        
        </div>
        
<br>
<br>
<br>
 
        
            <div class="container px-5">
                <div class="row gx-5 align-items-center text-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="resources/images/mainBody1.jpeg" alt="..." /></div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-5 text-center">증가하는 유기동물</h2>
                            <p>실종 유기되는 아이들의 수는 증가하지만 구조된 <br>아이들의 절반은 보호소에서 생을 마감합니다.<br>
                            국가에서는 이러한 아이들을 보호하기 위해 매년 유기동물 <br>지원사업을 시행하고 있지만 
                            날이 갈수록 늘어나는 <br>실종 유기되는 아이들의 수를 각 시 보호소에서는 <br>감당할 수 없을 정도입니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 2-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center text-center">
                    <div class="col-lg-6">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="resources/images/mainBody3.jpeg" alt="..." /></div>
                    </div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <h2 class="display-5">변화되는</h2>
                            <p>반려동물에 대한 인식의 변화가 있다고는 하지만<br>
                            아직도 여전히 반려동물을 소유물이라고 생각하고 <br>
                            버리거나 학대하는 일들이 끊임없이 <br>
                            우리 모르게 벌어지고 있습니다.  <br>
                            이 세상 모든 반려동물들과의 삶이 행복하기를 원합니다.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 3-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center text-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="resources/images/mainBody.jpeg" alt="..." /></div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-5">사람과 공존하는</h2>
                            <p>사람과 동물이 공존할 수 있는<br>
                            아주 자그마한 틈을 우리가 만들 수 있다면<br>
                            아이들은 또 한번의 기적을 꿈꾸고<br>
                            우리는 또 한번 아이들에게서 위로 받을 수 있을 것이라는 생각에<br> 
                            애니멀프렌즈를 시작하게 되었습니다. </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
   
  <!--      <footer class="container-fluid navbar-fixed-bottom">
       	<div class="container navbar-fixed-bottom mt-5" style="text-align:center">
       		<p>Copyright ©<script>document.write(new Date().getFullYear());</script>2021 All rights reserved</p>
       	 </div>
   -->
	<!-- footer -->
	<%@ include file="includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>