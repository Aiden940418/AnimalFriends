<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header_R.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <title>GOODS</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>
 
 


<style type="text/css">
		.card-body{
			font-size: 20px;
		}
		
		input[type=checkbox] {
		
			zoom: 1.5;
		
		}
		
	  	#horisonLine {
	 	    height: 10px;
		    border-bottom: groove;
		    position: relative;
			top: 20px;
	    	width: 100%;
		 }

		
		#goods {
			position: relative;
   			top: 80px;
		}
		
		#secCtn {
		    position: absolute;
		    top: 230px;
    	}
	 
	 	#thrCtn {
	 	 	margin-top: 215px;
	 	}
	 	
		.dropdown-toggle::after {
		    position: absolute;
		    top: 40%;
		}
	 	
	 

</style>

<!-- page -->
<div class="contentDiv">

	<div class="container text-center">
		<h1 class="mt-5">GOODS</h1>
		<div id="horisonLine"></div>
	</div>


	<!-- dropDown1-start -->
	<div class="container dropdown mt-4">
		<div class="row">
			<div class="col-6">		
				<a class="btn btn-outline-success dropdown-toggle text-center" href="#"
					role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" style="width:125px;"
					aria-expanded="false"> 상품카테고리 </a>
	
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><a class="dropdown-item" href="adminGoodsBagList.do">가방</a></li>
					<li><a class="dropdown-item" href="adminGoodsClothList.do">옷</a></li>
					<li><a class="dropdown-item" href="adminGoodsAccList.do">악세사리</a></li>
				</ul>
			</div>

		<!-- dropDown1-end -->


		<div class="col-6">
			<div class="btn-group float-end">
					<input type="checkbox" class="btn-check btn-outline-success" name="allCheck" id="allCheck" autocomplete="off">
   						<label class="btn btn-outline-success" for="allCheck" style="margin:0px;">전체 선택</label> 
									<script>
									$("#allCheck").click(function() {
										
										var chk = $("#allCheck").prop("checked");
										
										if(chk) {
											$(".chBox").prop("checked", true);
											
										}else {
											$(".chBox").prop("checked", false);
										}
										
									});
									</script>
					<button type="button" id="selectDelete_btn" class="btn btn-outline-success" style="float:right">선택 삭제</button>
					<button type="button" class="btn btn-outline-success" onclick="location.href='adminGoodsWriteForm.do'">상품 등록</button>
						 <script>
							 $("#selectDelete_btn").click(function(){
							  var confirm_val = confirm("정말 삭제하시겠습니까?");
							  
							  if(confirm_val) {
							   var checkArr = new Array();
							   
							   $("input[class='chBox']:checked").each(function(){
							    checkArr.push($(this).attr("data-cartNum"));
							   });
						
									
							   $.ajax({
								    url : "multiDeleteGoods.do",
								    type : "post",
								    data : { chbox : checkArr },
								    success : function(result){
								    	
								    	
								    	if(result == 1) { 
								    
									location.href="adminGoodsList.do";
		
								     
								     
								    	}else {
								    		
								    		alert("삭제 오류");
								    	}
								    }
								   });
								  } 
								 });
							</script>
					
				</div>
		</div>
		<br><br>
   					
  				  
		  </div>
	
	
	<!-- dropDown2-end -->
          	<div class="container mt-5 text-center" id="thrCtn">
           	  <div class="row">
				  <c:choose>
					<c:when test="${empty list}">
						<div class="col text-center mt-5">
							<p>등록된 글이 없습니다. </p>
						</div>
				 	 </c:when>
					<c:otherwise>
			          <c:forEach items="${list}" var="dto">
			          		<div class="col-sm mt-5  text-center" >
				          		<div class="card h-100 ms-5 text-center" style="width:430px; margin-top: -30px;" >
					                <h3 class="card-header" >
					                    <input type="checkbox" class="chBox" data-cartNum="${ dto.gNo}">
					                    <script>
											$(".chBox").click(function(){
												$("#allCheck").prop("checked", false);
											  })
										</script>
					    				<label for="cb1"></label>
					                </h3>
					                <div class="card-body text-center">
					                 	 <a href="adminGoodsDetail.do?gNo=${dto.gNo}"><img style="width:400px;height:350px; border:none; object-fit:cover;" 
					                 	 src="resources/${dto.gThumbImg}" class="img-thumbnail" alt="..."></a>
					              			 ${dto.gName}
					                	 <p class="container mt-1" >상품가격:${dto.gPrice}</p>
					                </div>
					               <!--<div class="card-footer">
						                    <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
						                  	<a href="#" class="btn btn-outline-success">장바구니</a>
					              		</div>-->
				             	 </div>
			              	</div>
	          		 	</c:forEach>
				     </c:otherwise>
				   </c:choose>
               	</div>
             </div>
          </div>

				
</div>

<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>

