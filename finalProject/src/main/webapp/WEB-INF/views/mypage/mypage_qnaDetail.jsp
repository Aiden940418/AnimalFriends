<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/mypage_leftMenuBar.jsp"%>

<!-- 내용 시작 부분 -->
<div class="contentDiv">

	<div class="container">
		<div class="row">

			<div class="row my-4" style="text-align: center;">
				<h1>QnA</h1>

			</div>

			<div>
				<table class="table" style="width: 55%; margin-left: auto; margin-right: auto;">
					<tr>
						<td style="text-align: center;" colspan="2"><h3>${dto.qtitle }</h3></td>
					</tr>

					<tr style="font-size: 14pt;">
						<td style="text-align: left; ">
							글쓴이 : ${dto.mnick }
						</td>
						<td style="text-align: right; ">
							등록일 : ${dto.qdateToChar }
						</td>
					</tr>

					<tr>
						<td colspan="2">
							<textarea rows="20" cols="100" class="form-control my-1" id="" readonly style="font-size:16pt;">
								${dto.qcontent }
							</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="4">
						<input type="button" value="삭제하기"
							class="ms-2 btn btn-outline-success my-1"
							onclick="location.href='myQnaDelete.do?qno=${dto.qno}&qgroupno=${dto.qgroupno}'"
							style="width: 90px; float: right;"> 
						<input type="button" value="수정하기"
							class="ms-2 btn btn-outline-success my-1"
							onclick="location.href='myQnaUpdateForm.do?qno=${dto.qno}'"
							style="width: 90px; float: right;"> 
						<input type="button"
							value="목록으로" class="btn btn-outline-success my-1"
							onclick="location.href='myQnaList.do'"
							style="width: 90px; float: right;">
						</td>

					</tr>

				</table>

			</div>
		</div>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>
	</div>

</div>