<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../includes/header.jsp" %> 
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>  
 
 
 
 

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

			<img src="resources/${dto.gImg}" class="rounded float-start mt-4 ms-5" style="width:550px; height:400px">
 
 				<div>
 				<h1 class="display-4">${dto.gName }</h1>
 				<div class="text-left">상품가격:${dto.gPrice }</div>
 				<textarea rows="8" cols="40" readonly>${dto.gContent }</textarea><br>
   				
				   				<!-- dropDown1-start -->
				<div class="container dropdown ms-5 mt-4">

				
					 <button type="button" class="btn btn-outline-success"
							style="width:100px; pointer-events: none;">수량선택</button>
					<select id="cartStock" class="form-control ms-2" style="width:200px" name="수량선택" style="margin-left:300px">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					
				<input type="hidden" id="mNo" name="mNo" value="${login.mNo}">
                <input type="hidden" id="gNo" name="gNo" value="${dto.gNo}">
                 


<!-- dropDown1-end -->
   				<br>
   				<br>
   				<a href="goodsPurchase.do" class="btn btn-outline-success btn-lg" style="width:200px">결제하기</a>
   				<a href="" class="btn btn-outline-success btn-lg ms-3"style="width:200px" id="addCart_btn">장바구니</a>
   				
   				</div>
   				</div>
   
   
  <script>
  $("#addCart_btn").click(function(){
   var mNo = $("#mNo").val();
   var gNo = $("#gNo").val();
   var cartStock = $("#cartStock").val();
      
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
	

<a href="#.detail" class="btn btn-outline-success ms-5"style="width:200px">상세보기</a>
<a href="#review" class="btn btn-outline-success ms-5"style="width:200px">리뷰보기</a>
<a href="#" class="btn btn-outline-success ms-5"style="width:200px">Q&A</a>	
<a href="#" class="btn btn-outline-success ms-5"style="width:200px">업체소개</a>	
	
	
	
	</div>
	
	<div>
 	<h1 id="detail" class="detail display-4 mt-5">상세보기</h1>
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
	
	</div>
	
	
	
	<div>
		<hr>
	
	<h1 class="display-3 mt-5 text" id="review">리뷰보기</h1>
		<table class="table text-center table-hover" >
		<thead class="table-white">
			<tr>
				<th style="width : 20%;">작성자</th>
				<th style="width : 60%;">제목</th>
				<th style="width : 20%;">날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${review}" var="greview">
				<tr>
					<td>${greview.gRewWriter}</td>
					<td> 
	                     <a href="reviewDetails.do?gRewNo=${greview.gRewNo }">${greview.gRewTitle}</a>
					</td>
					<td>${greview.gRewDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	</div>
	<hr>
	
	<div>
	<br>
	
	<h1 class="display-4 mt-3">Q&A</h1>
		<table class="table text-center table-hover" >
		<thead class="table-dark">
			<tr>
				<th style="width : 10%;">NO.</th>
				<th style="width : 70%;">제목</th>
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
		<hr>
	
	<h1 class="display-4 mt-5">업체소개</h1>
	
		<table class="table text-center table-bordered border-primary;
		"  >
		<thead class="table-white">
		
		<tr>
		<th>업체명</th>
		<th>대표자명</th>
		<th>전화번호

		</tr>
		
		<tr>
		<td>ㅁㄴㅇㄴ</td>
		<td>sdaas</td>
		<td>010833</td>
		</tr>	
		<tr>
		<th>사업자번호</th>
		<td colspan="2">경기도 성남시 수정구 어쩌구..</td>
		</tr>
		
	</table>
		<hr>
	
	</div>

                </div>
                </div>
                </div>
                </div>
              	</div>



 <%@ include file="../includes/footer.jsp" %>   
