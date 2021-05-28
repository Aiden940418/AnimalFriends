<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
	input[type=checkbox] {
	
	zoom: 1.5;
	
	}
	
	#adtNotiMng {
		position: relative;
    	top: 80px;
	
	}
	
	#horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position: relative;
	    top: 145px;
	    width: 98%;
	 }
	 
	 #secCtn {
	 	position: absolute;
		top: 215px;	 	
	 }
	 
	 #thrCtn {
	 	position: absolute;
	 	top:290px;
	 }
	 
	 .delBtnNallCheck {
	  position: absolute;
	  top: 17px;
	  right: 27px;
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
<!-- Example single danger button -->
<div class="container mt-5">

	<div class="container text-center" id="adtNotiMng">
		<h1 class="">입양공고 관리</h1>
	</div>
	
	<!-- 가로줄 -->
	<div id="horisonLine"></div>
	
		<form action="adminAdoptCtgy.do" method="GET">
	<div class="btn-group">
			<select id="aArea" name="aArea" class="form-control ms-2 text-center" style="width: 100px ">
				<option value="0">지역</option>
				<option value="서울동부">서울동부</option>
				<option value="서울서부">서울서부</option>
				<option value="서울남부">서울남부</option>
				<option value="서울북부">서울북부</option>
				<option value="경기인천">경기인천</option>
			</select>

	</div>
	<div class="btn-group " >
			<select id="aType" name="aType" class="form-control ms-2 text-center" style="width: 100px ">
				<option value="0">동물종류</option>
				<option value="강아지">강아지</option>
				<option value="고양이">고양이</option>
				
			</select>
	</div>
	<div class="btn-group" >
		<button type="submit" class="btn btn-outline-success mt-3" id="search">찾기</button>
		
		
		<script>
		
		$("#search").click(function() {
									
				var aArea = $("#aArea").val();
				var aType = $("#aType").val();

				
				if(aArea == "0" || aType == "0") {
					
					alert("검색오류 선택해주세요");
					
				
				}
				
			
		});							
		</script>
	</div>
	</form>
	
	

<!-- Example single danger button -->
	<div class="container" id="secCtn">
		
			<div class="delBtnNallCheck">
					
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
					<button type="button" id="selectDelete_btn" class="btn btn-outline-success ms-3">선택 삭제</button>
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
	


		<c:choose>
			<c:when test="${empty list }">
				<p>작성된 글이 없습니다</p>
			</c:when>
		<c:otherwise>
				<div class="container" id="thrCtn">
					<div class="row">
						<c:forEach items="${list}" var="dto">
							<div class="col-sm mt-5">
					
					    			<label for="cb1"></label>
										<input type="checkbox" class="chBox" data-cartNum="${ dto.aNo}">
						            	<script>
											$(".chBox").click(function(){
												$("#allCheck").prop("checked", false);							
													})
										</script>
								<div class="card h-100 ms-4" style="width:400px;">
									<a href="#"><img src="resources/images/adopt_dog1.png" class="card-img-top"
										alt="..."style="width:400px;height:350px; border:none; object-fit:cover;"></a>	
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
		
</div>

	<!-- footer -->
<%@ include file="../includes/footer.jsp"%>

