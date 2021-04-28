<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
</style>
<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container">
		<div class="row mt-5 ms-5">
			<h1>공지사항</h1>
			<br>

		</div>

		<div class="row" style="float: right; margin-right:100px;">
			<input type="button" class="btn btn-outline-success mb-5" value="글쓰기"
				onclick="location.href='noticeWrite.do'"
				style="width: 100px;">
		</div>
		<br> <br> <br>
		<div class="row ms-4" >

			<br>

			<table class="table text-center table-hover">
				<thead class="table-dark">
					<tr>
						<th style="width: 10%;">번호</th>
						<th style="width: 70%;">제목</th>
						<th style="width: 20%;">날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2</td>
						<td>공지사항</td>
						<td>2021-04-15</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="adminNoticeDetail.do">공지사항</a></td>
						<td>2021-04-14</td>
					</tr>

				</tbody>
			</table>

		</div>
		</div>
		</div>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>