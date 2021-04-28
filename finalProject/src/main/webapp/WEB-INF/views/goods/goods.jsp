<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../includes/header.jsp" %>   
 
 <style type="text/css">
 

  .button {
    background: #fff;
    border: none;
    padding: 2px;
    cursor: pointer;
    display: block;
    position: relative;
    overflow: hidden;
    transition: all .35s ease-in-out .35s;
      margin: 0 auto;
      width: 100px;
      text-align: center;
  }
  .dark-button .button,
  .dark-button .button span {
    background: #36B4C7;
    color: #fff;
  }
  .dark-button .button:after,
  .dark-button .button:before,
  .dark-button .button:hover span {
    background: #fff;
    color: #444;
  } 
  .dark-button-2 .button,
  .dark-button-2 .button span {
    background: #333;
    color: #fff;
  }
  .dark-button-2 .button:after,
  .dark-button-2 .button:before,
  .dark-button-2 .button:hover span {
    background: #fff;
    color: #444;
  } 
  span {
    display: block;
    padding:;
    background: #fff;
    z-index: 100;
    position: relative;
    transition: all .35s ease-in-out .35s;
  }
  .button:hover span {
    background: #36B4C7;
    color: #fff;
    transition: all .35s ease-in-out .35s;
  }
  .button:after {
    bottom: -100%;
    right: -100%;
    content: "";
    width: 100%;
    height: 100%;
    position: absolute;
    background: #36B4C7;
    transition: all .35s ease-in-out .5s;
  }
  .button:hover:after {
    right: 0;
    bottom: 0;
    transition: all ease-in-out .35s;
  }
  .button:before {
    top: -100%;
    left: -100%;
    content: "";
    width: 100%;
    height: 100%;
    position: absolute;
    background: #36B4C7;
    transition: all .35s ease-in-out .5s;
  }
  .button:hover:before {
    left: 0;
    top: 0;
    transition: all ease-in-out .35s;
  }



Resources

</style>

<div class="container text-center">
<h1 class="display-3 mt-5">GOODS</h1>
<hr>
</div>


<!-- dropDown1-start -->
<div class="container dropdown ms-5 mt-4">
  <a class="btn btn-outline-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    상품카테고리
  </a>

  <ul class="btn btn-outline-success dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="#">가방</a></li>
    <li><a class="dropdown-item" href="#">옷</a></li>
    <li><a class="dropdown-item" href="#">몰라..</a></li>
  </ul>


<!-- dropDown1-end -->

<!-- dropDown2-start -->
  <a class="btn btn-outline-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    상품카테고리
  </a>

  <ul class="btn btn-outline-success dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="#">가방</a></li>
    <li><a class="dropdown-item" href="#">옷</a></li>
    <li><a class="dropdown-item" href="#">몰라..</a></li>
  </ul>
</div>
<!-- dropDown2-end -->



       <div class="container mt-5 text-center">
        <div class="row">
            <div class="col">
              <div class="card">
                <h3 class="card-header">
                 상품제목	
                </h3>
                <div class="card-body">
                  <p class="card-text">
					<img style="width:400px;height:200;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo9Y9gGygW0yzjifJLzMSsVt3S6gu72pPaOvSINq1sRrT9Ggw11HIlo7DIR6OydWo9k6GExIyx&usqp=CAc" class="img-thumbnail" alt="GOODS_Pic">
                 Price:
                  </p>
                </div>
                

			<div class="dark-button button-wrapper">	
               <div class="card-footer">
               <div class="button card-footer">
                  <span>구매하기</span>
              </div>
              
              <div class="button">
              	<span>장바구니</span>
              </div>
	</div>
	</div>
	
              </div>
            </div>
            <div class="col">
              <div class="card">
                <h3 class="card-header">
                  <a href="goodsDetails.do">상품이름</a>
                </h3>
                <div class="card-body">
                  <p class="card-text">
                 	<img style="width:400px;height:200;" src="resources/images/adopt_dog3.jpeg" class="img-thumbnail" alt="...">
                  Price:
                  </p>
                                 </div>
               <div class="card-footer">
                  <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
                  <a href="#" class="btn btn-outline-success">찜하기</a>
                  
              </div>
              </div>
            </div>
            <div class="col">
              <div class="card">
                <h3 class="card-header">
                  상품내용
                </h3>
                <div class="card-body">
                	<p class="card-text">
                	</p>
                </div>
                
             <div class="card-footer">
                  <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
                  <a href="#" class="btn btn-outline-success">찜하기</a>
                  
              </div>
					
				</div>
				</div>
				</div>
				</div>
				</div>
		<div class="container mt-5 text-center">
        <div class="row">
            <div class="col">
              <div class="card">
                <h3 class="card-header">
                 상품내용
                </h3>
                <div class="card-body">
                  <p class="card-text">
                  </p>
                </div>
               <div class="card-footer">
                  <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
                  <a href="#" class="btn btn-outline-success">찜하기</a>
                  
              </div>

              </div>
            </div>
            <div class="col">
              <div class="card">
                <h3 class="card-header">
                  상품이름
                </h3>
                <div class="card-body">
                  <p class="card-text">
                  </p>
                                 </div>
               <div class="card-footer">
                  <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
                  <a href="#" class="btn btn-outline-success">찜하기</a>
                  
              </div>
              </div>
            </div>
            <div class="col">
              <div class="card">
                <h3 class="card-header">
                  상품내용
                </h3>
                <div class="card-body">
                	<p class="card-text">
                	</p>
                </div>
                
             <div class="card-footer">
                  <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
                  <a href="#" class="btn btn-outline-success">장바구니</a>
                  
              </div>
					
				</div>
				</div>
				</div>
				</div>
				</div>
				
 <%@ include file="../includes/footer.jsp" %>   
