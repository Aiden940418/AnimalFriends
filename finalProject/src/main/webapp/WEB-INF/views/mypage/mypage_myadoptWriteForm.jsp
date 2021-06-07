<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

	<!-- header -->
 	<%@ include file="../includes/header_R.jsp" %>

<title>나의 입양 공고 등록</title>

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
			border-radius: 20%;
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
		
		#secCtn {
		 	position: relative;
			top: 150px;	 	
			margin-bottom: 150px;
		
		}
		
		#myadtNotiDiv {
		position: relative;
	    top: 55px;
 
	}

</style>	
	
	
	<!-- 페이지 내용 부분 -->
	
	<div class="contentDiv text-center">
		
		<div class = "container text-center" id="myadtNotiDiv">
			<h1 class="text-center">나의 입양 공고 등록</h1>
		</div>
		
		
		 <div class="container" id="secCtn">
		
			 <div class="row">
				<div class="col-2"></div>
				
				<div class="col-10">
				<form action="myAdoptWriteRes.do" method="POST" enctype="multipart/form-data">
					<input type="hidden" name="aMNo" value="${login.mNo}" >
			
					<table style="position: relative; bottom: 35px;">
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">제목</button></th>
							<td><input type="text" class="form-control my-1 ms-2" name="aTitle"
								style="width:500px;"></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">지역설정</button></th>
							<td><select name="aArea" class="form-control ms-2" style="width:500px">
						<option value="서울동부">서울동부</option>
						<option value="서울서부">서울서부</option>
						<option value="서울남부">서울남부</option>
						<option value="서울북부">서울북부</option>
						<option value="경기인천">경기인천</option>

						
					</select></td>
						</tr>
						
						
						<tr>
							<th><button type="button" class="btn btn-outline-success mt-1"
									style="width:130px; pointer-events: none;">동물 종</button></th>
							<td><select name="aType" class="form-control ms-2 mt-2" style="width:200px">
						<option value="강아지">강아지</option>
						<option value="고양이">고양이</option>


						
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
							<label class="btn"> 
								<input type="radio"
								name="anmGender" value="암컷" autocomplete="off"> 암
							</label>
							<label class="btn"> 
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
							</label>
							<label class="btn"> 
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
							</label>	
							<label class="btn"> 
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
									<div class="box my-3">
										<img class="profile" src=""/>
							        </div>
							
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
				
						

						<tr style="position: relative;right: 107px;">
							<td colspan="2">
							 <input type="submit" value="작성" class="btn btn-outline-success mt-3"
								style="width:100px;">
							<input class="btn btn-outline-success mt-3"
									onclick="location.href='myAdoptDetail.do?aNo=${dto.aNo}'" 
									style="width:100px; pointer-events: none;" value="취소">
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
	

	
	
	
