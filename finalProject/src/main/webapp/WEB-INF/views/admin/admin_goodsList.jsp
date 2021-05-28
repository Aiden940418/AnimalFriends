<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style type="text/css">
.card-body{
	font-size: 20px;
}
input[type=checkbox] {

zoom: 1.5;

}

</style>
<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container text-center">
		<h1 class="display-3 mt-5">GOODS</h1>
		<hr>
	</div>


	<!-- dropDown1-start -->
	<div class="container dropdown  mt-4">
		<a class="btn btn-outline-success dropdown-toggle" href="#"
			role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
			aria-expanded="false"> 상품카테고리 </a>

		<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			<li><a class="dropdown-item" href="adminGoodsBagList.do">가방</a></li>
			<li><a class="dropdown-item" href="adminGoodsClothList.do">옷</a></li>
			<li><a class="dropdown-item" href="adminGoodsAccList.do">악세사리</a></li>
		</ul>


		<!-- dropDown1-end -->


		<div class="btn-group float-end me-4">
	
			<div class="delBtn">
						<button type="button" id="selectDelete_btn" class="btn btn-outline-success" style="float:right">선택 삭제</button>
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
				
				<button type="button" class="btn btn-outline-success ms-3"
				onclick="location.href='adminGoodsWriteForm.do'">상품 등록</button>
				
		</div>
		<br><br>
				  <div class="allCheck" >
   					<input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">&nbsp;전체 선택</label> 
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
  				  </div> 
  				  
		
	<!-- dropDown2-end -->
	
		<c:choose>
		<c:when test="${empty list}">
		
		<h2>등록된 글이 없습니다. </h2>
		</c:when>
	
	
		<c:otherwise>
		
		
				
          	<div class="container mt-5">
            <div class="row">
           

              
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
                 	<img style="width:400px;height:200; " src="resources/${dto.gThumbImg}" class="img-thumbnail" alt="...">
                 	
                <a href="adminGoodsDetail.do?gNo=${dto.gNo}">${dto.gName}</a>
                <p class="container mt-1" >상품가격:${dto.gPrice}</p>
                </div>
               <!--<div class="card-footer">
                    <a href="goodsDetails.do" class="btn btn-outline-success">구매하기</a>
                  <a href="#" class="btn btn-outline-success">장바구니</a>
                 

                  
              </div>
               -->
              </div>
              </div>
              
                        </c:forEach>
              
              </div>
              </div>
              
            </div>
    </c:otherwise>

	</c:choose>


				
			</div>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>

</html>