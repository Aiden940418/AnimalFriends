<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv ">
		
		<div class="container ms-5">
		<!-- 상단 제목부분 -->
		<div class="container text-center mt-5">
			<h1>${login.mNick}님 장바구니</h1>
			<br>
		</div>
		<br>
		
		<!-- 찜 목록 그리드 시작 -->
		<div class="container" style="width: 1200px;">
			<div class="row">
			
			
				<!-- 카드 박스 (체크박스 포함) -->
				<div class="col-sm">
					<!--모두 선택 체크박스-->
					<div class="allCheck">
						<input name="allCheck" type="checkbox" id="allCheck"><label
							for="allCheck">모두 선택</label><br>
					
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
					
			
					
					<!-- 모두 선택 체크박스 끝  -->
					
					<!-- 선택 삭제 버튼  -->
					
					<div class="delBtn">
						<button type="button" class="selectDelete_btn" style="float:right">선택 삭제</button>
					<script>
					
					 $(".selectDelete_btn").click(function(){
					  var confirm_val = confirm("정말 삭제하시겠습니까?");
					  
					  if(confirm_val) {
					   var checkArr = new Array();
					   
					   $("input[class='chBox']:checked").each(function(){
					    checkArr.push($(this).attr("data-cartNum"));
					   });
				
							
					   $.ajax({
						    url : "deleteCart.do",
						    type : "post",
						    data : { chbox : checkArr },
						    success : function(result){
						    	
						    	
						    	if(result == 1) { 
						    
							location.href="cartList.do?mNo="+${login.mNo};

						     
						     
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
					<br>
					<!-- 선택 삭제 버튼 end -->
					<hr>
					
					
					<!--  cartList start -->
				<c:forEach items="${cartList}" var="cartList">
					

					
					
					<div class="card" style="width: 15rem; margin-top: 20px;">
										<!-- 카드 부분 체크박스 -->
					
					<div class="checkBox mt-5">
						<input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNo }" />
					
					<script>
						$(".chBox").click(function(){
						$("#allCheck").prop("checked", false);
							
						})
						
					
					</script>
					</div>
					
					<!--  카드부분 체크박스 끝  -->
						<img class="card-img-top"
							src="resources/${cartList.gImg }" alt="Card image cap">
						<div class="card-body">
							<p class="card-text">
								상품명 :${cartList.gName } <br> 
								가격 :
									<fmt:formatNumber pattern="###,###,###" value="${cartList.gPrice}" />원<br>
								구매수량 : ${cartList.cartStock }<br>
								최종가격 : <fmt:formatNumber pattern="###,###,###" value="${cartList.gPrice * cartList.cartStock }" />원
								
							</p>
							<div class="delete">
								 <button type="button" class="delete_${cartList.cartNo}_btn" data-cartNum="${cartList.cartNo}">삭제</button>
								 
								 <script>
								  $(".delete_${cartList.cartNo}_btn").click(function(){
								   var confirm_val = confirm("정말 삭제하시겠습니까?");
								   
								   if(confirm_val) {
								    var checkArr = new Array();
								    
								    checkArr.push($(this).attr("data-cartNum"));
								               
								    $.ajax({
								     url : "deleteCart.do",
								     type : "post",
								     data : { chbox : checkArr },
								     success : function(result){
								      if(result == 1) {     
								       location.href = "cartList.do?mNo="+${login.mNo};
								      } else {
								       alert("삭제 실패");
								      }
								     }
								    });
								   } 
								  });
								 </script>
								</div>
														
						
				
						</div>
					</div>
								</c:forEach>
					
				</div>
				
	
				<!--  카드박스 끝 -->
				
				
		
			
	
	
	
			</div>
		</div>
	
	
	
	
	
	</div>
	
	
	
	
	
	
	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

</body>
</html>