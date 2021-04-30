<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <title>애니멀프랜즈</title>
 <%@ include file="includes/header.jsp" %>  
 
 <style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap');

	.carousel-caption{
	
	font-family: 'Nanum Brush Script', cursive;
	font-size: 50px;
	color: black;
	}
</style>
 
    <!-- 메인 작성 -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="resources/images/main_image1.jpeg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block ">
              <h1>사지말고 입양하세요</h1>
              <p><h1>더이상 사지 말고 입양하세요!!</h1></p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="resources/images/main_image2.jpeg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>무슨말을 적고싶은데 </h5>
              <p>뭐라고 적어야 할까요</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="resources/images/main_image3.jpeg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>뭐라고 적을까요</h5>
              <p>뭐라고 적어야 할까요 </p>
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


      <!-- content -->
      <div class="container">
      <div class="row my-5">
          <div class="col-7 ">
          <h2>First featurette heading. It will blow your mind.</h2>
          <p>First featurette heading. It will blow your mindFirst featurette heading. 
             It will blow your mindFirst featurette heading.
              It will blow your mind</p>
            </div>
          <div class="col-5 ">
              <img src="https://t.ly/nLd8A" alt="" class="w-100">
          </div>
       </div>
      <hr />
      <div class="row my-5">
        <div class="col-5 ">
          <img src="https://t.ly/nLd8A" alt="" class="w-100">
        </div>
        <div class="col-7 ">
          <h2>First featurette heading. It will blow your mind.</h2>
          <p>First featurette heading. It will blow your mindFirst featurette heading. 
             It will blow your mindFirst featurette heading.
              It will blow your mind</p>
        </div>
    </div>

    <hr />

    <div class="row my-5">
        <div class="col-7">
          <h2>First featurette heading. It will blow your mind.</h2>
          <p>First featurette heading. It will blow your mindFirst featurette heading. 
             It will blow your mindFirst featurette heading.
              It will blow your mind</p>
        </div>
        <div class="col-5">
          <img src="https://t.ly/nLd8A" alt="" class="w-100">
        </div>
    </div>
    </div>
   
    
  <!-- 여기는 footer -->
			 <%@ include file="includes/footer.jsp" %>   