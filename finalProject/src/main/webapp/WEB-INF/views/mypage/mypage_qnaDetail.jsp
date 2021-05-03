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
				<table class="table"
					style="width: 55%; margin-left: auto; margin-right: auto;">
					<tr>
						<td style="text-align: center;"><h3>${dto.qtitle }</h3></td>
					</tr>


					<tr style="text-align: left; font-size: 14pt;">
						<td>등록일 : ${dto.qdateToChar }</td>
					</tr>


					<tr>
						<td>
							<textarea rows="20" cols="100" class="form-control my-1" id="" readonly style="font-size:16pt;">
								${dto.qcontent }
							</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="3">
						<input type="button" value="수정하기"
							class="ms-2 btn btn-outline-success my-1"
							onclick="location.href='myQnaUpdate.do'"
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