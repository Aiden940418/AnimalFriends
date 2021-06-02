<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	<!-- header -->
	<%@ include file="../includes/header_R.jsp" %>

<title>나의 입양 공고 수정</title>

 <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>

<style>
	#myadtNotiDiv {
		position: relative;
	    top: 55px;
 
	}
	
	 #secCtn {
 	position: relative;
	top: 150px;	 	
	margin-bottom: 150px;
	
	}
	
	tr {
		align:center;
	}

</style>


	<!-- 페이지 내용 부분 -->
	<div class="contentDiv text-center" >
		
		<div class = "container text-center" id="myadtNotiDiv">
			<h1 class="text-center">나의 입양 공고 수정</h1>
		</div>
	 	
	 	<div class="container" id="secCtn">
		
		<div class="row">
			<div style="margin: auto; text-align: center;">
				
				<form action="myAdoptUpdateRes.do" method="GET">
				
					<input type="hidden" name="aNo" value="${dto.aNo }">
			
					<table align="center">
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
				
						

						<tr align="center">
							<td colspan="2">
							 	<input type="submit"
								class="btn btn-outline-success"
								style="width: 100px;" value="작성">

					
						<input type="button" class="btn btn-outline-success"
								value="취소"onclick="location.href='myAdoptDetail.do?aNo=${dto.aNo}'" style="width:100px;">
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
	
	