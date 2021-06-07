<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>

	
<!-- header -->
<%@ include file="../includes/header_R.jsp" %>

<title>입양 공고 관리</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>

	

<style type="text/css">
	input[type=checkbox] {
	
	zoom: 1.5;
	
	}
	
	
	
	#horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position: relative;
	    top: 145px;
	    width: 98%;
	 }
	 
	 #adtNotiMng {
		position: relative;
	    top: 55px;
 
	}
	 
	 #secCtn {
		position: relative;
		top: 150px;	 
	 }
	 
	 #thrCtn {
 		margin-top: 160px;	
 	 }

</style>



<!-- 페이지 내용 부분 -->
<div class="contentDiv">

	
	<div class="container text-center" id="adtNotiMng">
		<h1 class="">입양공고 관리</h1>
	</div>
	
	<!-- 가로줄 -->
	<div id="horisonLine"></div>
	
	<form action="adminAdoptCtgy.do" method="GET">
	<div style="position: relative; top: 163px;">
	<div class="input-group" style="width:400px;">
			<select id="aArea" name="aArea" class="form-select form-select-sm btn-outline-success mt-3" style="width: 100px ">
				<option value="0">지역</option>
				<option value="서울동부">서울동부</option>
				<option value="서울서부">서울서부</option>
				<option value="서울남부">서울남부</option>
				<option value="서울북부">서울북부</option>
				<option value="경기인천">경기인천</option>
			</select>

			<select id="aType" name="aType" class="form-select form-select-sm btn btn-outline-success mt-3" style="width: 100px ">
				<option value="0">동물종류</option>
				<option value="강아지">강아지</option>
				<option value="고양이">고양이</option>
				
			</select>
		<button type="submit" class="btn btn-outline-success mt-3" id="search" >찾기</button>
		
		
		<script>
		
		$("#search").click(function() {
									
				var aArea = $("#aArea").val();
				var aType = $("#aType").val();

				
				if(aArea == "0" || aType == "0") {
					
					alert("검색오류:카테고리를 선택해주세요");
					
				
				}
				
			
		});							
		</script>
	</div>
	</div>
	</form>
</div>
	

<!-- Example single danger button -->
	<div class="container" id="secCtn">
		
	<div style="position: relative; top: -28px; width: 171px; align-items: center; margit: 0px; left: -5px; float: right;">
	<div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
		   			<input type="checkbox" class="btn-check btn-outline-success" name="allCheck" id="allCheck" autocomplete="off">
		   				<label class="btn btn-outline-success ms-1" for="allCheck" style="margin:0px;">전체 선택</label> 
					<button type="button" id="selectDelete_btn" class="btn btn-outline-success ms-1">선택 삭제</button>
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
					
				
	</div>


				<div class="container" id="thrCtn">
					<div class="row">
					<c:choose>
						<c:when test="${empty list }">
							<div class="col text-center mt-5">
								<p>작성된 글이 없습니다</p>
							</div>
						</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="dto">
								<div class="col-sm mt-5">
					    			<label for="cb1"></label>
						            	<script>
											$(".chBox").click(function(){
												$("#allCheck").prop("checked", false);							
													})
										</script>
											<div class="card h-100 text-center" style="width:450px; margin: 0 auto; align-items: center;">
												<input type="checkbox" class="chBox my-2" data-cartNum="${ dto.aNo}" style="position: relative;left: -132px;">
													<a href="adminAdoptDetail.do?aNo=${dto.aNo}"><img src="resources/${dto.aThumbImg }" class="card-img-top"
														style="width:450px; height:350px; border:none; object-fit:cover;"></a>	
												<div class="card-body">
													<h4 class="card-title text-center">${dto.aTitle}</h4><br>
													<p class="card-text text-center">${dto.aMemo}</p>		 
												</div>
											</div>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
		
			<div class="row mb-5"></div>

	
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>