<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
</style>
<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">


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
								style="width: 100px ">
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
							<td id="select_img" style="aglin:left;">
							<img src=""/>
							
							</td>
							
						</tr>
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지 경로(임시)</button></th>
							<td><%=request.getRealPath("/") %></td>
						</tr>
						
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




						<tr>
							<td colspan="2"><button class="btn btn-outline-success"
									onclick="location.href='adminGoodsDetail.do'"
									style="width: 100px; pointer-events: none; float: right; margin: 10px;">취소</button>
								<input type="submit" value="작성" class="btn btn-outline-success"
								style="width: 100px; float: right; margin: 10px;"></td>

						</tr>
					</table>
				</form>
			</div>
		</div>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>
	</div>

</div>
</html>