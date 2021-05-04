<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	<!-- 페이지 내용 부분 -->
	
	<div class="contentDiv">
		
		
		 <div class="container mt-5 text-center">
		
			<h1>입양 공고 등록</h1>
			<br>
		
		
		<div>
			<form >
				<div class="form-group">
					<label>제목</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="제목을 입력해주세요"></textarea>
				</div>
				<br>

	<div class="container">

		<div class="row">
			<!-- title -->
			<div class="row my-4" style="text-align: center;">
				<h1>입양 등록</h1>
			</div>

			<!-- form -->
			<div style="margin: auto; text-align: center;">
				<form action="" style="display: inline-block;">
					<table>
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">제목</button></th>
							<td><input type="text" class="form-control my-1" id=""
								style="width:500px; margin:10px;"></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">지역설정</button></th>
							<td><select class="form-control ms-2" style="width:200px">
						<option>서울동부</option>
						<option>서울서부</option>
						<option>서울남부</option>
						<option>서울북부</option>
						<option>경기인천</option>
						<option>강원도</option>
						<option>충청도</option>
						<option>경상도</option>
						<option>전라도</option>
						
					</select></td>
						</tr>
						
						
						<tr>
							<th><button type="button" class="btn btn-outline-success mt-1"
									style="width:100px; pointer-events: none;">동물 종</button></th>
							<td><select class="form-control ms-2 mt-2" style="width:200px">
						<option>강아지</option>
						<option>고양이</option>
						<option>도마뱀</option>
						<option>거북이</option>
						<option>기타</option>

						
					</select></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">동물이름</button></th>
							<td><input type="text" class="form-control my-1" name="goods_sellNum"
								style="width:500px; margin:10px;" placeholder="동물 이름을 입력해주세요"></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">동물품종</button></th>
							<td><input type="text" class="form-control my-1" name="goods_sellNum"
								style="width:500px; margin:10px;" placeholder="동물 품종을 입력해주세요"></td>
						</tr>
						

				<!-- 동물 성별 라디오 버튼 -->

						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">동물 성별</button></th>
							<td>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:100px; margin-right:400px">
							<label class="btn btn-secondary"> 
							
								<input type="radio"
								name="options" id="option3" autocomplete="off"> 암
								<input type="radio"
								name="options" id="option3" autocomplete="off"> 수
								
								</label>
								</div>
								</td>
						</tr>
						
						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">예방 접종</button></th>
							<td>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:200px; margin-right:400px">
							<label class="btn btn-secondary"> 
							
								<input type="radio"
								name="options" id="option3" autocomplete="off"> Y
								<input type="radio"
								name="options" id="option3" autocomplete="off"> N
								<input type="radio"
								name="options" id="option3" autocomplete="off"> 알수없음 
								
								
								</label>
								</div>
								</td>
						</tr>
						
						
						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">중성화 여부 </button></th>
							<td>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" style="width:200px; margin-right:400px">
							<label class="btn btn-secondary"> 
							
								<input type="radio"
								name="options" id="option3" autocomplete="off"> Y
								<input type="radio"
								name="options" id="option3" autocomplete="off"> N
								<input type="radio"
								name="options" id="option3" autocomplete="off"> 알수없음 
								
								
								</label>
								</div>
								</td>
						</tr>

						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">연락처</button></th>
							<td>
							<input type="text" class="form-control my-1" name="goods_sellNum"
								style="width:500px; margin:10px;" placeholder="입양문의시 연락처(잠실)">
							
								</td>
						</tr>


						<tr>
							<th><button class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">이미지</button></th>
							<td><input type="file" class="form-control my-1" name="goods_name"
								style="width:500px;margin:10px;" placeholder="이미지를 등록해주세요."></td>
						</tr>
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">동물품종</button></th>
							<td><input type="text" class="form-control my-1" name="goods_sellNum"
								style="width:500px; margin:10px;" placeholder="동물 품종을 입력해주세요"></td>
						</tr>
						
				
						

						<tr>
							<td colspan="2"><button class="btn btn-outline-success"
									onclick="location.href='adminGoodsDetail.do'" style="width:100px; pointer-events: none;float: right;margin:10px;">취소</button>
							 <input type="submit"
								value="작성" class="btn btn-outline-success"
								style="width: 100px; float: right; margin:10px;"></td>

						</tr>
						
		
						
						
						
			
					</table>
				</form>
			</div>
		</div>
	

	</div>
	</div>
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
