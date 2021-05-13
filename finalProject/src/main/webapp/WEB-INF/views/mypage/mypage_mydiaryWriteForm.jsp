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
				<form action="mydiaryWriteRes.do" method="post" style="display: inline-block;" enctype="multipart/form-data">
				<input type="hidden" name="diaryThumbImg" value="aaa.jpg">
					<table>

						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지</button></th>
							<td><input type="file" class="form-control my-1" id="file" name="file"
								size="100"></td>
						</tr>
						
						<tr>
							<td>	
								<div>
									<div class="select_img"> <!-- 선택한 이미지 보여주기 -->
										<img src="" />
									</div>
									<script>
										//선택한 이미지 보여주기
										$("#file").change(
											function() {
												if (this.files && this.files[0]) {
													var reader = new FileReader;
													reader.onload = function(data) {
														$(".select_img img").attr("src", data.target.result).width(200);
													}
													reader.readAsDataURL(this.files[0]);
											}
										});
									</script>
									<%=request.getRealPath("/") %>
								</div>
							</td>
						</tr>
						
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
