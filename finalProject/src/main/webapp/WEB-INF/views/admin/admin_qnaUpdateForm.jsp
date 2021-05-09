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
			<div class="row my-4" style="text-align: center;">
				<h1>QnA 수정</h1>

			</div>

			<div style="margin: auto; text-align: center;">
				<form action="adminQnaUpdateRes.do" style="display: inline-block;">
					<input type="hidden" name="qno" value="${dto.qno}">
					<table>
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">제목</button></th>
							<td><input type="text" class="form-control my-1" id="" name="qtitle" value="${dto.qtitle}" size="100"></td>

						</tr>

						<tr>
							<th style="vertical-align: top;"><button type="button"
									class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">내용</button></th>
							<td><textarea rows="20" cols="100" class="form-control my-1" id="" name="qcontent">${dto.qcontent}</textarea></td>

						</tr>

						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지</button></th>
							<td><input type="text" class="form-control my-1" id="" name="" value=""
								size="100" placeholder="이미지를 등록해주세요." readonly></td>
						</tr>

						<tr>
							<td colspan="2">
								<input type="button" value="취소"
								class="btn btn-outline-success my-1"
								onclick="location.href='adminQnaList.do'"
								style="width: 90px; float: right;"> 
								<input type="submit" value="수정" class="btn btn-outline-success mx-3 my-1"
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
</html>