<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %> 

<%@ include file="../includes/header_R.jsp" %>   

	
 
 <title>GOODS Detail</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>
 
 

<!-- page -->
<div class="contentDiv">

	<div class="container">

		<div class="text-end float-end" >
			<div id=button>
			<a href="adminGoodsUpdateForm.do?gNo=${dto.gNo}" class="btn btn-outline-success">수정</a>
			<a href="adminGoodsDelete.do?gNo=${dto.gNo }" class="btn btn-outline-success">삭제</a>
			<a href="adminGoodsList.do" class="btn btn-outline-success">목록</a>
			</div>

		</div><br><br>
		<hr>

       <div class="container mt-5 text-center">
        <div class="row">
            <div class="col">
              <div class="card">

                <div class="card-body">
                  <p class="card-text">
                 <!-- 굿즈 이미지(서버에 업로드된 이미지 화면출력) -->

			<img src="resources/${dto.gImg}" class="rounded float-start mt-4 ms-5" style="width:550px; height:400px; object-fit:cover;">
 
 				<div class="mt-5">
 				<h1 class="display-4">${dto.gName }</h1>
 				<div class="fs-3">상품분류:${dto.gCtgy}</div>
 				<div class="fs-3">상품가격:${dto.gPrice }</div>
 				<div class="fs-3">상품재고:${dto.gStock }</div>
 			
 				
 				<textarea class="mt-3" rows="5" cols="30" readonly="readonly" style="border:none; text-align:center;  resize: none; outline:none;">${dto.gContent } </textarea><br>
   				
   				
   				
		
					
					
				<input type="hidden" id="mNo" name="mNo" value="${login.mNo}">
                <input type="hidden" id="gNo" name="gNo" value="${dto.gNo}">
                 


<!-- dropDown1-end -->
   				<br>
   				<br>
   				
   				</div>
   				</div>
   
   
  <script>
  $("#addCart_btn").click(function(){
   var mNo = $("#mNo").val();
   var gNo = $("#gNo").val();
   var cartStock = $("#cartStock").val();
      
   if(cartStock == 0) {
	   alert("수랑을 선택 해 주세요");
	   return false;
   }
   var data = {
	 mNo : mNo,	   
     gNo : gNo,
     cartStock : cartStock
     };
   
   $.ajax({
    url : "addCart.do",
    type : "post",
    data : data,
    success : function(result){
    	
   if(result ==1) { 
     alert("카트 담기 성공");
   }else {
	  alert("회원만 사용 할 수 있습니다.");
   }
    },
    error : function(){
     alert("카트담기 실패");
    }
   });
  });
 </script>
<br>            
<br>
<hr>
	<div class="container mt-5 text-center	">
	





<button onclick="fnMove();" class="btn btn-outline-success ms-5"style="width:170px;">상세보기 </button>

<script>
    function fnMove(){
        var offset = $("#detail").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>






<button onclick="reviewMove();" class="btn btn-outline-success ms-5"style="width:170px">리뷰보기</button>
<script>
    function reviewMove(){
        var offset = $("#review").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>
<button onclick="qnaMove();" class="btn btn-outline-success ms-5"style="width:170px">Q&A</button>
<script>
    function qnaMove(){
        var offset = $("#qna").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>	
<button onclick="companyMove();" class="btn btn-outline-success ms-5"style="width:170px">업체소개</button>	
	
<script>
    function companyMove(){
        var offset = $("#company").offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>	
	
	</div>

	<br>
 	<br>
	</div>
	
	<div  class="text-center"id="detail">
 	<h1 class="display-4 mt-3">상세보기</h1>
 	
 	<img  class="mt-5"src="resources/${dto.gImg}" style="width:1000px; height:700px;">
 	
 	
 	
 	<br>
 	<br>
 	<br>
 	<br>
 	
 	<div class="container text-center fs-1">
 		<span> 상품 이름: ${dto.gName } </span> <br>
 		<span> 상품 가격: ${dto.gPrice }</span> <br>
		<span> 상품 설명: ${dto.gContent}</span> <br>
		
		 	
 	</div>
 	
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	
 	
 	<br>
 	<br>
 	
 	<br><br>
 	
 	</div>

	
	
	
	
	
	<div id="review">
		<hr>
	<h1 class="display-3 mt-3">리뷰보기</h1>
	</div>
	<div>
		<table class="table text-center table-hover" >
		<thead class="table-white">
			<tr>
				<th style="width : 20%;">작성자</th>
				<th style="width : 60%;">후기내용</th>
				<th style="width : 20%;">날짜</th>
			</tr>
		</thead>
		<tbody>
		<c:choose>
		<c:when test="${empty review}">
		
			<td colspan="3">작성된 리뷰가 없습니다.</td>
			
		
		</c:when>
	
	
		
		<c:otherwise>
			<c:forEach items="${review}" var="greview">
				<tr>
					<td>${greview.gRewWriter}</td>
					<td>${greview.gRewContent}
					</td>
					<td><fmt:formatDate value="${greview.gRewDate}" pattern="yy.MM.dd HH:mm:ss"/></td>
				</tr>
			</c:forEach>
			</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	
	</div>

	
	
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>

	<div>		
	
	<hr>
	
	<h1 class="display-4 mt-3" id="qna">Q&A</h1>
		<table class="table text-center table-hover" >
		<thead class="table">
			<tr>
				<th style="width : 20%;">NO.</th>
				<th style="width : 60%;">제목</th>
				<th style="width : 20%;">날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>상품문의</td>
				<td>2021-04-13</td>
			</tr>

		</tbody>
	</table>

		<hr>
	
	</div>
	
	
	<div>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
		<hr>
	
	<h1 class="display-4 mt-3" id="company">업체소개</h1>
	
		<table class="table text-center table-bordered border-primary;
		"  >
		<thead class="table-white">
		
		<tr>
		<th>업체명</th>
		<th>대표자명</th>
		<th>전화번호

		</tr>
		
		<tr>
		<td>애니멀프렌즈</td>
		<td>전지적동물시점</td>
		<td>01079424242</td>
		</tr>	
		<tr>
		<th>사업자번호</th>
		<td colspan="2">서울특별시 강남구 테헤란로 407</td>
		</tr>
		
	</table>
		<hr>
	
	</div>

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