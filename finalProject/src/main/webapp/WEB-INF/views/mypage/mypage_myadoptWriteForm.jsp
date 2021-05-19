<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		
		 <div class="container mt-5 text-center">
		
			<h1>리뷰 등록</h1>
				<br><br>

				<div class="container text-center" style="margin-left:130px">
				
				<!-- 여기서 부터 전송 정보 입력 -->
				<form action="myAdoptWriteRes.do" method="POST" enctype="multipart/form-data">
					
					<input type="hidden" name="aMNo" value="${login.mNo}" >
			
					<table>
						
						<!-- 제품이름 보여주기 -->
						<tr>
							<th>
								<button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">제품명</button>
							</th>
							<td>
								<input type="text" class="form-control my-1" name="anmName" id="anmName"
									style="width:500px; margin:10px;" placeholder="제품명 자동완성 칸"
									readonly="readonly">
							</td>
						</tr>
						
						<!-- 이미지 넣기 -->
						<tr>
							<th>
								<button class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이미지</button>
							</th>
							<td>
								<input type="file" class="form-control my-1" name="file"
									id="aImg"style="width:500px;margin:10px;" placeholder="이미지를 등록해주세요.">
							</td>
						</tr>
						
						<!-- 넣고자 하는 이미지 미리보기 -->		
						<tr>
							<th>
								<button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지 미리보기</button>
							</th>
							<td id="select_img" style="table-layout:auto; float: left; text-algin:center;" >
								<img src=""/>
							</td>
						</tr>
						
						<!-- 이미지 미리보기 이벤트 스크립트 -->
						<script>
						  $("#aImg").change(function(){
							   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     	$("#select_img img").attr("src", data.target.result).width(300);        
								    }
								    reader.readAsDataURL(this.files[0]);
							   }
						  });
						</script>
						
						<!-- 제목 작성 -->
						<tr>
							<th>
								<button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">제목</button>
							</th>
							<td>
								<input type="text" class="form-control my-1" name="aTitle"
									style="width:500px; margin:10px;">
							</td>
						</tr>
						
						<!-- 내용 작성 칸 -->
						<tr>
							<th>
								<button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">메모</button>
							</th>
							<td>
								<input type="text" style=" margin:10px; width:500px; height:200px; margin-right:400px; " 
									name="aMemo">
							</td>
						</tr>

						<!-- 제품점수 체크박스 버튼 -->
						<tr>
							<th style="vertical-align: top;">
								<button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">제품 점수</button>
							</th>
							<td>
								<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:500px; margin-right:400px">
				                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
				                <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점">
				                <label for="rating1"></label>
				                <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2점">
				                <label for="rating2"></label>
				                <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3점" >
				                <label for="rating3"></label>
				                <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4점">
				                <label for="rating4"></label>
				                <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5점">
				                <label for="rating5"></label>
				            </div>
							</td>
						</tr>
						
						<!-- 취소버튼, 작성버튼 -->
						<tr>
							<td colspan="2">
								<button class="btn btn-outline-success mt-5"
									onclick="location.href='adminGoodsDetail.do'" style="width:130px; pointer-events: none;float: right;margin-right:300px;">취소</button>
							 	<input type="submit"
									value="작성" class="btn btn-outline-success mt-5"
									style="width:130px; float:right; margin-right:10px;">
							</td>
						</tr>
						
					</table>
				</form>
			</div>
		</div>
	</div>
	

	
	
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
