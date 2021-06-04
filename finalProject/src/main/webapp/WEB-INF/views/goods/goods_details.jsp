<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>  
 
 <%@ include file="../includes/header_R.jsp" %>   

	
 
 <title>GOODS Detail(관리자)</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>
 
 
 

<div class="container text mt-5 ms-5">
<a href="goodsList.do" class="btn btn-outline-success">목록으로</a>
</div>
<hr>

       <div class="container mt-5 text-center">
        <div class="row">
            <div class="col">
              <div class="card">

                <div class="card-body">
                  <p class="card-text">
                 <!-- 굿즈 이미지(서버에 업로드된 이미지 화면출력) -->

			<img src="resources/${dto.gImg}" class="rounded float-start mt-4 ms-5" style="width:550px; height:400px; object-fit:cover;">
 
 				<div>
 				<h1 class="display-4">${dto.gName }</h1>
 				<div class="">상품가격:${dto.gPrice }</div>
 				<textarea class="mt-3" rows="5" cols="30" readonly="readonly" style="border:none; text-align:center;">${dto.gContent } </textarea><br>
   				
   				
   				
   				
			<!-- dropDown1-start -->
				<div class="container dropdown ms-5 mt-4">

		
					<select id="cartStock" class="form-control ms-2 btn btn-outline-success btn-lg text-center" style="width:200px; text-align-last: center; vertical-align: middle;" name="수량선택">
						<option value="0" >&nbsp;&nbsp;수량선택</option>
						<option value="1">&nbsp;&nbsp;1개</option>
						<option value="2">&nbsp;&nbsp;2개</option>
						<option value="3">&nbsp;&nbsp;3개</option>
						<option value="4">&nbsp;&nbsp;4개</option>
						<option value="5">&nbsp;&nbsp;5개</option>
					</select><br>
					<a href="" class="btn btn-outline-success btn-lg mt-4 "style="width:200px" id="addCart_btn">장바구니</a>
						</div>
					
					
					
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
	
	<div id="detail">
 	<h1 class="display-4 mt-5">상세보기</h1>
 	
 	<img src="resources/${dto.gImg}" style="width:1000px; height:700px;">
 	
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
	<h1 class="display-3 mt-5 text">리뷰보기</h1>
	</div>
	<div>
		<table class="table text-center table-hover" >
		<thead class="table-white">
			<tr>
				<th style="width : 20%;">작성자</th>
				<th style="width : 60%;">제목</th>
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
					<td> 
	                     <a href="reviewDetails.do?gRewNo=${greview.gRewNo }">${greview.gRewTitle}</a>
					</td>
					<td>${greview.gRewDate}</td>
				</tr>
			</c:forEach>
			</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	
	</div>
	<hr>
	
	
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
	
	<h1 class="display-4 mt-5" id="company">업체소개</h1>
	
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