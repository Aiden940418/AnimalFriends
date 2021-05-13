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

	<div class="container">

		<div class="row">
			<!-- title -->
			<div class="row my-4" style="text-align: center;">
				<h1>상품 수정</h1>
			</div>

			<!-- form -->
			<div style="margin: auto; text-align: center; display: inline-block">
				<form action="adminGoodsUpdateRes.do" method="GET">
					<input type="hidden" name="gNo" value="${dto.gNo}">
					
					<table>
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width: 100px; pointer-events: none; ">카테고리</button></th>
							<td><input type="text" class="form-control my-1" name="gCtgy" value="${dto.gCtgy }"
								readonly="readonly" style="width:500px;margin:10px;"></td>
						</tr>					
					
					
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">상품명</button></th>
							<td><input value= "${dto.gName }" type="text" class="form-control my-1" name="gName"
								style="width:500px; margin:10px;"></td>
						</tr>
						
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">가격</button></th>
							<td><input type="text" class="form-control my-1" name="gPrice" value="${dto.gPrice }"
								style="width:500px;margin:10px;"></td>
						</tr>
						

						<tr>
							<th style="vertical-align: top;"><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">상품소개</button></th>
							<td><textarea rows="20" cols="50" class="form-control my-1"
									name="gContent" style=" width:500px; height:300px; resize:none; margin:10px;" value="${dto.gContent }"></textarea></td>
						</tr>

						<tr>
							<th><button class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">이미지</button></th>
							<td><input type="file" class="form-control my-1" name="goods_name"
								style="width:500px;margin:10px;" placeholder="이미지를 등록해주세요."></td>
						</tr>
						<tr>
							<th><button type="button" class="btn btn-outline-success"
									style="width:100px; pointer-events: none;">재고수량</button></th>
							<td><input type="text" class="form-control my-1" name="gStock" value="${dto.gStock}"
								style="width:500px; margin:10px;"></td>
						</tr>
						
						
						

						<tr>
							<td colspan="2">
								<input type="button" value="취소" class="btn btn-outline-success"
									onclick="location.href='adminGoodsList.do'" 
									style="width:100px;float: right;margin:10px;">
									
							 <input type="submit"
								value="수정" class="btn btn-outline-success"
								style="width: 100px; float: right; margin:10px;">
							</td>

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