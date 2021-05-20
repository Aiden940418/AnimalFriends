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
		
			<h1>입양 공고 등록</h1>
			<br>
		
				<br>

				<div class="container text-center" style="margin-left:130px">
				
				<form action="myGoodsReviewWrite.do" method="POST" enctype="multipart/form-data">
					<input type="hidden" name="aMNo" value="${login.mNo}" >
			
					<table>
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">제목</button></th>
							<td><input type="text" class="form-control my-1" name="aTitle"
								style="width:500px; margin:10px;"></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">지역설정</button></th>
							<td><select name="aArea" class="form-control ms-2" style="width:200px">
						<option value="서울동부">서울동부</option>
						<option value="서울서부">서울서부</option>
						<option value="서울남부">서울남부</option>
						<option value="서울북부">서울북부</option>
						<option value="경기인천">경기인천</option>
						<option value="강원도">강원도</option>
						<option value="충청도">충청도</option>
						<option value="경상도">경상도</option>
						<option value="전라도">전라도</option>
						
					</select></td>
						</tr>
						
						
						<tr>
							<th><button type="button" class="btn btn-outline-success mt-1"
									style="width:130px; pointer-events: none;">동물 종</button></th>
							<td><select name="aType" class="form-control ms-2 mt-2" style="width:200px">
						<option value="강아지">강아지</option>
						<option value="고양이">고양이</option>
						<option value="도마뱀">도마뱀</option>
						<option value="거북이">거북이</option>
						<option value="기타">기타</option>

						
					</select></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">동물이름</button></th>
							<td><input type="text" class="form-control my-1" name="anmName" id="anmName"
								style="width:500px; margin:10px;" placeholder="동물 이름을 입력해주세요"></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">동물품종</button></th>
							<td><input type="text" class="form-control my-1" name="anmBreed" id="anmBreed"
								style="width:500px; margin:10px;" placeholder="동물 품종을 입력해주세요"></td>
						</tr>
						
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">동물나이</button></th>
							<td><input type="text" class="form-control my-1" name="anmAge" id="anmAge"
								style="width:500px; margin:10px;" placeholder="동물 나이를 입력해주세요"></td>
						</tr>
						

				<!-- 동물 성별 라디오 버튼 -->

						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">동물 성별</button></th>
							<td>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:500px; margin-right:400px">
							<label class="btn "> 
							
								<input type="radio"
								name="anmGender" value="암컷" autocomplete="off"> 암
								<input type="radio"
								name="anmGender" value="수컷" autocomplete="off"> 수
								
								</label>
								</div>
								</td>
						</tr>
						
						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">예방 접종</button></th>
							<td>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:500px; margin-right:400px">
							<label class="btn"> 
							
								<input type="radio"
								name="anmVcnYn" value="Y" autocomplete="off"> Y
								<input type="radio"
								name="anmVcnYn" value="N" autocomplete="off"> N
	
								
								
								</label>
								</div>
								</td>
						</tr>
						
						
						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">중성화 여부 </button></th>
							<td>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:500px; margin-right:400px">
							<label class="btn"> 
							
								<input type="radio"
								name="anmNtrYn" value="Y" autocomplete="off"> Y
								<input type="radio"
								name="anmNtrYn" value="N" autocomplete="off"> N

								
								</label>
								</div>
								</td>
						</tr>

						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">연락처</button></th>
							<td>
							<input type="text" class="form-control my-1" name="aPhone"
								style="width:500px; margin:10px;" placeholder="입양문의시 연락처(선택)">
							
								</td>
						</tr>


						<tr>
							<th><button class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이미지</button></th>
							<td><input type="file" class="form-control my-1" name="file"
								id="aImg"style="width:500px;margin:10px;" placeholder="이미지를 등록해주세요."></td>
						</tr>
										
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지 미리보기</button></th>
							<td id="select_img" style="table-layout:auto; float: left; text-algin:center;" >
									<img src=""/>
							
							</td>
							
						</tr>
				
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
						

						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
								style="width:130px; pointer-events: none;">메모</button>
								</th>
						<td><input type="text" style=" margin:10px; width:500px; height:200px; margin-right:400px; " 
						name="aMemo"></td>
				
						

						<tr>
							<td colspan="2"><button class="btn btn-outline-success mt-5"
									onclick="location.href='adminGoodsDetail.do'" style="width:130px; pointer-events: none;float: right;margin-right:300px;">취소</button>
							 <input type="submit"
								value="작성" class="btn btn-outline-success mt-5"
								style="width:130px; float:right; margin-right:10px;"></td>

						</tr>
						
		
						
						
						
					</table>
					
					</form>
				</div>
			</div>
		</div>
	

	
	
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
