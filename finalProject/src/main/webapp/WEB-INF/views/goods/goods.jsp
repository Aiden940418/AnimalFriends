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
		<button type="button"
			class="btn btn-outline-success dropdown-toggle mt-3"
			data-bs-toggle="dropdown" aria-expanded="false" style="width:150px; ">카테고리</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="goodsBagList.do" value="가방">가방</a></li>
			<li><a class="dropdown-item" href="goodsClothList.do" value="옷">옷</a></li>
			<li><a class="dropdown-item" href="goodsAccList.do" value="악세사리">악세사리</a></li>
		</ul>
	
	
		<div class="btn-group float-end">
		<button type="button" class="btn btn-outline-success mt-3  " onclick="location.href='cartList.do?mNo=${login.mNo}'">
		나의 장바구니 보기</button>
	</div>

</div>
<!-- dropDown1-end -->




	<c:choose>
		<c:when test="${empty list}">
		
		<h2>등록된 글이 없습니다. </h2>
		</c:when>
	
	
		<c:otherwise>
		
		
				
          	<div class="container mt-5 text-center ms-5">
            <div class="row">
              
              
          <c:forEach items="${list}" var="dto">
          
          
          
          		<div class="col-sm mt-5 ms-5">
          		<div class="card h-100 " style="width:550px; height:550px;">
          
                <div class="card-body text-cente">
                 <a href="goodsDetails.do?gNo=${dto.gNo}">	<img style="width:500px;height:350px; border:none; object-fit:cover;" 
                 src="resources/${dto.gImg}" class="img-thumbnail" alt="..."> </a><br>
                 <br>
                 <br>
              	<h2>${dto.gName}</h2>
                <p class="container mt-2">상품가격:${dto.gPrice}원
                  </p>
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
