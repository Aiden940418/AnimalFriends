<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- header -->
<%@ include file="../includes/header_R.jsp" %>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<title>상품 등록</title>

 <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>
 <style>
		 .box {
			width: 300px;
			height: 300px; 
			border-radius: 30%;
			overflow: hidden;
			border: 3px	solid #54BD54;
			position:relative;
			left:110px;
				
		}
	
		.profile {
		    width: 100%;
		    height: 100%;
		    object-fit: cover;
		}
 
 </style>
<!-- page -->
<div class="contentDiv">

	<div class="container">

		<div class="row">
			<!-- title -->
			<div class="container row my-4 mt-5 text-center" >
				<h1>상품 등록</h1>
			</div>
				<div class="container text-center" style="margin-left:100px">
			

			<!-- form -->
			<div style="margin: auto; text-align: center; display: inline-block">
				<form action="adminGoodsWriteRes.do" method="POST" enctype="multipart/form-data">
					<input type="hidden" name="mNo" value="${login.mNo}">

					<table>
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width: 130px; pointer-events: none; ">상품종류</button></th>
							<td><select name="gCtgy" class="form-control ms-2 text-center"
								style="width: 80px ">
									<option value="옷">옷</option>
									<option value="가방">가방</option>
									<option value="악세사리">악세사리</option>
									
							</select></td>
						</tr>

						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width: 130px; pointer-events: none;">상품명</button></th>
							<td><input type="text" class="form-control my-1"
								name="gName" style="width: 500px; margin: 10px;"></td>
						</tr>

						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">가격</button></th>
							<td><input type="text" class="form-control my-1" name="gPrice"
								style="width:500px;margin:10px;"></td>
						</tr>


						<tr>
							<th style="vertical-align: top;"><button type="button"
									class="btn btn-outline-success"
									style="width: 130px; pointer-events: none;">상품소개</button></th>
							<td><textarea rows="20" cols="50" class="form-control my-1"
									name="gContent"
									style="width: 500px; height: 300px; resize: none; margin: 10px;"></textarea></td>
						</tr>

						<tr>
							<th><button class="btn btn-outline-success"
									style="width: 130px; pointer-events: none;">이미지</button></th>
							<td><input type="file" class="form-control my-1" name="file"
								id="gImg" style="width: 500px; margin: 10px;"
								placeholder="이미지를 등록해주세요."></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지 미리보기</button></th>
							<td id="select_img" style="table-layout:auto; text-algin:center;">
									<div class="box my-3">
										<img class="profile" src=""/>
							        </div>
							</td>
							
						</tr>
						<%-- <tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지 경로(임시)</button></th>
							<td><%=request.getRealPath("/") %></td>
						</tr> --%>
						
								<script>
										  $("#gImg").change(function(){
										   if(this.files && this.files[0]) {
										    var reader = new FileReader;
										    reader.onload = function(data) {
										     	$("#select_img img").attr("src", data.target.result).width(400);        
										    }
										    reader.readAsDataURL(this.files[0]);
										   }
										  });
								</script>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width: 130px; pointer-events: none;">판매수량</button></th>
							<td><input type="text" class="form-control my-1"
								name="goods_sellNum" style="width: 500px; margin: 10px;"></td>
						</tr>




						<tr style="position: relative;right: 155px;top: 20px;">
							<td colspan="2">
								<input type="button" value="취소" 
									class="btn btn-outline-success" onclick="location.href='adminGoodsList.do'"
									style="width: 100px; float: right;" >
								<input type="submit" value="작성" class="btn btn-outline-success"
								style="width: 100px; float: right;">
							</td>

						</tr>
					</table>
				</form>
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