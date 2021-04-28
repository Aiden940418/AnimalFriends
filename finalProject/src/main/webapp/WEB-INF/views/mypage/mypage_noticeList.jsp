<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- header -->
<%@ include file="../includes/header.jsp"%>

<!-- leftmenubar -->
<%@ include file="../includes/mypage_leftMenuBar.jsp"%>
<!-- page -->
<div class="contentDiv">

	<div class="container">
		<div class="row mt-5 ms-5">
			<h1>공지사항</h1>
			<br>

		</div>

		<br> <br>
		<div class="container" >

			<br>

			<table class="table text-center table-hover ">
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
						<td><a href="myNoticeDetail.do">공지사항</a></td>
						<td>2021-04-14</td>
					</tr>

				</tbody>
			</table>

		</div>
		</div>
		</div>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>