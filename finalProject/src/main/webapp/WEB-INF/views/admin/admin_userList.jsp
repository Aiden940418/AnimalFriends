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
		<!-- title -->
		<div class="row mt-5">
			<h1>회원관리</h1>
			<br>
		</div>

		<!-- button -->
		<div class="row mt-2" style="float: right;">

			<button type="button"
				class="btn btn-outline-success dropdown-toggle mb-3 mx-2"
				data-bs-toggle="dropdown" aria-expanded="false"
				style="width: 150px;">회원보기</button>
			<ul class="dropdown-menu" style="width: 150px;">
				<li><a class="dropdown-item" href="#">무엇이</a></li>
				<li><a class="dropdown-item" href="#">들어</a></li>
				<li><a class="dropdown-item" href="#">갈까</a></li>
				<li><a class="dropdown-item" href="#">요</a></li>
			</ul>


			<button type="button" class="btn btn-outline-success mb-3 mx-2"
				style="width: 150px;">탈퇴한 회원</button>
			<button type="button" class="btn btn-outline-success mb-3 mx-2"
				style="width: 150px;">보호소 회원</button>
			<button type="button" class="btn btn-outline-success mb-3 mx-2"
				style="width: 150px;">선택회원 탈퇴</button>
		</div>
		<br> <br> <br>

		<!-- table -->
		
		<c:choose>
		<c:when test="${empty list }">
		
		<작성된 글이 없습니다>
		
			
		</c:when>
	
	
		
		<c:otherwise>
		
		
		
		
		
		<div class="row">
			<c:forEach items="${list}" var="dto">
		

			<br>

			<table class="table text-center table-hover"
				style="margin-left: auto; marin-right: auto;">
				<thead class="table-dark">
					<tr>
						<th><input type="checkbox"></th>
						<th>번호</th>
						<th>회원유형</th>
						<th>아이디</th>
						<th>이름</th>
						<th>연락처</th>
						<th>이메일</th>
						<th>주소</th>
						<th>가입여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>${dto.mNo }</td>
						<td>${dto.mRole }</td>
						<td>${dto.mId }</td>
						<td>${dto.mName }</td>
						<td>${dto.mPhone }</td>
						<td>${dto.mAddr1 }${dto.mAddr2 }${dto.mAddr3 }</td>
						<td>${dto.mJoinYn }</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>2</td>
						<td>일반 회원</td>
						<td>user2</td>
						<td>최사용</td>
						<td>010-4321-8765</td>
						<td>yanadu@korea.net</td>
						<td>경기도 광주시 어딘가</td>
						<td>탈퇴</td>
					</tr>

				</tbody>
			</table>
			</c:forEach>
			
			
		</div>
		</c:otherwise>
		</c:choose>
		
		
		
		
		

	</div>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>