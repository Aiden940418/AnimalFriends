<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
	
	
	
	
	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		
		<div class="container">

		<div class="row">
			<!-- title -->
			<div class="row my-4" style="text-align: center;">
				<h1>나의 입양일기 작성</h1>
			</div>

			<!-- form -->
			<div style="margin: auto; text-align: center;">
				<form action="mydiaryWriteRes.do" style="display: inline-block;" method="post" enctype="multipart/form-data">
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
									<img src=""/>
							
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
									style="width: 130px; pointer-events: none;">내용</button></th>
							<td><textarea rows="10" cols="100" class="form-control my-1"
									id="" name="dcontent"></textarea></td>
						</tr>

						<tr>
							<td colspan="2"><input type="button" value="취소"
								class="btn btn-outline-success my-1" onclick="location.href='myQnaList.do'"
								style="width: 90px; float: right;"> 
								<input type="submit"
								value="작성" class="btn btn-outline-success mx-3 my-1"
								style="width: 90px; float: right;"></td>

						</tr>
					</table>
				</form>
			</div>


				

				




		</div>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>
	</div>
	</div>
