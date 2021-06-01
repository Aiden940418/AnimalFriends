<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<!-- header -->
	<%@ include file="../includes/header_R.jsp" %>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<title>나의 입양일기 작성</title>

 <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>

<style type="text/css">
		.box {
			width: 300px;
			height: 300px; 
			border-radius: 30%;
			overflow: hidden;
			border: 3px	solid #54BD54;
			position:relative;
			left:270px;
				
		}
	
		.profile {
		    width: 100%;
		    height: 100%;
		    object-fit: cover;
		}
		
		#myDrWriteDiv {
	 	position: relative;
	    top: 55px;
 
		}

		 #secCtn {
	 	position: relative;
		top: 150px;	 	
		margin-bottom: 150px;
		
		}
		 
							      
</style>
	
	
	
	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv" style="margin-bottom:40px;">
		
		<div class = "container text-center" id="myDrWriteDiv">
			<h1 class="text-center">나의 입양일기 작성</h1>
		</div>
		

		<div class="container" id="secCtn">

		<div class="row">
			
			<!-- form -->
			<div style="margin: auto; text-align: center;">
				<form action="mydiaryWriteRes.do" method="post" style="display: inline-block;" enctype="multipart/form-data">
					<table>

						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지</button></th>
							<td><input type="file" class="form-control my-1" id="diaryImg" name="file"
								size="100" placeholder="이미지를 등록해주세요."></td>
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
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지 경로(임시)</button></th>
							<td><%=request.getRealPath("/") %></td>
						</tr>
			
						<script>
								  $("#diaryImg").change(function(){
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
							<th style="vertical-align: top;"><button type="button"
									class="btn btn-outline-success	 mx-3 my-1"
									style="width: 130px; pointer-events: none;">내용</button>
							</th>
							<td><textarea rows="10" cols="100" class="form-control my-1"
									id="" name="dcontent"></textarea></td>
						</tr>

						<tr>
							<th></th>
							<td><input type="button" value="취소"
								class="btn btn-outline-success my-1" onclick="location.href='mydiary.do'"
								style="width: 90px; float: right;"> 
								<input type="submit"
								value="작성" class="btn btn-outline-success mx-3 my-1"
								style="width: 90px; float: right;"></td>

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
	
	
	