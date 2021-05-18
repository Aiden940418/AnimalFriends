<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
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
  p {
  	font-size: 13pt;
  }


Resources

</style>

<div class="container text-center">
<h1 class="display-3 mt-5">GOODS</h1>
<hr>
</div>


<!-- dropDown1-start -->
<div class="container dropdown ms-5 mt-4">
  <a class="btn btn-outline-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
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


	<c:choose>
		<c:when test="${empty list}">
		
		<h2>등록된 글이 없습니다. </h2>
		</c:when>
	
	
		<c:otherwise>
		
		
				
          	<div class="container mt-5 text-center ms-5">
            <div class="row">
              
              
          <c:forEach items="${list}" var="dto">
          		<div class="col-sm mt-5 ms-5">
          		<div class="card h-100 " style="width:550px;">
          
                <h3 class="card-header text-center ">
                  <a href="goodsDetails.do?gNo=${dto.gNo}">${dto.gName}</a>
                </h3>
                <div class="card-body text-cente">
                 	<img style="width:400px;height:100;" src="resources/${dto.gImg}" class="img-thumbnail" alt="...">
                <p class="container mt-2">상품가격:${dto.gPrice}
                  </p>
                </div>
               <div class="card-footer">
                  <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
                  <a href="#" class="btn btn-outline-success">장바구니</a>
                  

                  
              </div>
              </div>
              </div>
              
                        </c:forEach>
              
              </div>
              </div>
              
            </div>
    </c:otherwise>

	</c:choose>
				
 <%@ include file="../includes/footer.jsp" %>   
