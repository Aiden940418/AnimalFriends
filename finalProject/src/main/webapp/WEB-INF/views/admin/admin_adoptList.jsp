<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
input[type=checkbox] {

zoom: 1.5;

}
</style>
<script type="text/javascript">
	function adminAdoptAreaCheck(){
		
	}

</script>

<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
	<div class="contentDiv">

	
<div class="container text-center">
	<h1 class="display-5 mt-5">입양공고 관리</h1>
</div>

<!-- Example single danger button -->
<div class="container mt-5">
	<form action="adminAdoptCtgy.do" method="GET">
	<div class="btn-group">
			<select name="aArea" class="form-control ms-2 text-center" style="width: 100px ">
				<option value="0">지역</option>
				<option value="서울동부">서울동부</option>
				<option value="서울서부">서울서부</option>
				<option value="서울남부">서울남부</option>
				<option value="서울북부">서울북부</option>
				<option value="경기인천">경기인천</option>
			</select>

	</div>
	<div class="btn-group " >
			<select name="aType" class="form-control ms-2 text-center" style="width: 100px ">
				<option value="0">동물종류</option>
				<option value="강아지">강아지</option>
				<option value="고양이">고양이</option>
				
			</select>
	</div>
	<div class="btn-group" >
		<button type="submit" class="btn btn-outline-success mt-3 ">찾기</button>
	</div>
	</form>

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
						    url : "multiDeleteAdopt.do",
						    type : "post",
						    data : { chbox : checkArr },
						    success : function(result){
						    	
						    	
						    	if(result == 1) { 
						    
							location.href="adminAdopt.do";

						     
						     
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
	
</div>
	


	<c:choose>
		<c:when test="${empty list }">
		
		<작성된 글이 없습니다>
		
			
		</c:when>
	
	
		
		<c:otherwise>
		

		<div class="container mt-5 ms-5" >
			<div class="row">
	<c:forEach items="${list}" var="dto">
	
		<div class="col-sm mt-5">
			<input type="checkbox" class="chBox" data-cartNum="${ dto.aNo}">
            	<script>
					$(".chBox").click(function(){
						$("#allCheck").prop("checked", false);							
							})
				</script>
    			<label for="cb1"></label>
			<div class="card h-100" style="width:350px;">
				<a href="#"><img src="resources/images/adopt_dog1.png" class="card-img-top"
					alt="..."></a>	
			<div class="card-body">
				<h5 class="card-title"><a href="adminAdoptDetail.do?aNo=${dto.aNo}">${dto.aTitle}</a></h5>
				<p class="card-text">${dto.aMemo}</p>		 
			</div>
			</div>
		</div>
			
							</c:forEach>
			
			</div>
			
		
		
	</div>


	
	</c:otherwise>
	
	</c:choose>



<div class="container">
	<nav aria-label="Page navigation example ">
		<ul class="pagination justify-content-center mt-5">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
			<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>
</div>
</div>


</html>