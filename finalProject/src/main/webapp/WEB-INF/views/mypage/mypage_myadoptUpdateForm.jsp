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
		
				<br>

				<div class="container text-center">
				
				<form action="myAdoptUpdateRes.do" method="GET">
				
					<input type="hidden" name="aNo" value="${dto.aNo }">
			
					<table>
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">제목</button></th>
							<td><input type="text" class="form-control my-1" name="aTitle"
							value="${dto.aTitle }"
								style="width:500px; margin:10px;"></td>
						</tr>
						


						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">동물이름</button></th>
							<td><input type="text" class="form-control my-1" name="anmName" id="anmName"
								style="width:500px; margin:10px;" value="${dto.anmName }"></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">동물품종</button></th>
							<td><input type="text" class="form-control my-1" name="anmBreed" id="anmBreed"
								style="width:500px; margin:10px;" value="${dto.anmBreed }"></td>
						</tr>
						
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">동물나이</button></th>
							<td><input type="text" class="form-control my-1" name="anmAge" id="anmAge"
								style="width:500px; margin:10px;" value="${dto.anmAge }"></td>
						</tr>
						

			

						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">연락처</button></th>
							<td>
							<input type="text" class="form-control my-1" name="aPhone"
								style="width:500px; margin:10px;" placeholder="입양문의시 연락처(선택)" value="${dto.aPhone }">
							
								</td>
						</tr>


						<tr>
							<th><button class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">이미지</button></th>
							<td><input type="file" class="form-control my-1"
								style="width:500px;margin:10px;" placeholder="이미지를 등록해주세요."></td>
						</tr>

						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
								style="width:100px; pointer-events: none;">메모</button>
								</th>
						<td><input type="text" style=" margin:10px; width:500px; height:200px; margin-right:100px; " 
						name="aMemo" value="${dto.aMemo }"></td>
				
						

						<tr>
							<td colspan="2">
							 	<input type="submit"
								class="btn btn-outline-success"
								style="width: 100px; float: right; margin:10px;" value="작성">

					
						<input type="button" class="btn btn-outline-success"
								value="취소"onclick="location.href='myAdoptDetail.do?aNo=${dto.aNo}'" style="width:100px;float: right;margin:10px;">
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
