<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
 <title>입양공고상세</title>

<style type="text/css">

.wrap {
	
	top: 50%;
	left: 50%;

	text-align: center;
}

a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: block;
	margin: 20px auto;
	max-width: 200px;
	text-decoration: none;
	border-radius: 4px;
	padding: 20px 30px;
}

a.button {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

a.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}




</style>


<div class="container text-center">
	<h1 class="display-5 mt-5">입양 공고</h1><br>
	<hr>
	<button type="button" class="btn btn-outline-success md-5 float-end" onclick="location.href='adopt.do'">목록보기</button>

	
	<!-- header완료 -->

	<br>
	</div>
	<div class="container text-center mt-5">
		<h1>글 제목</h1><br>
		
		</div>
		<div class="container" style="margin-left:250px;">
		<span>등록날짜:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>조회수:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
   		<span>댓글 개수:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
	
		<br>
		<br>
		<br>

		<!-- image추가 시작 -->
		<div class="container text-center">
		
			<img src="resources/images/adopt_cat1.jpeg" width="600px" height="600px">
		</div>
		<!-- image추가 끝 -->
	
		<!-- 본문내용 시작 -->
	
		<div class="container text-center mt-5">
		<textarea class="container text-center display-7 "style=";outline:none; resize: none; border:none" readonly="readonly" rows="7px">오래전 할머니께서 키우시던 강아지의 새끼를 분양받아서 키우다가 개인사정으로 새로운 주인을 찾고 있어요.
		</textarea>
		</div>
		
		
		<!-- 본문내용 끝  -->
		
		<!-- 동물 내용 입력  -->
		
		<div class="container text-center">
		<table align="center">
		
		<h2>크롱이의 신상정보</h2>

			<tr>
			<th align="left">나  이</th>
			<td>15</td>
			</tr>
			<tr>
			<th align=left>품  종</th>
			<td>비숑</td>
			</tr>
			<tr>
			<th align=left>성  별</th>
			<td>수컷</td>
			</tr>
			<tr>
			<th>예방접종 여부(Y/N)</th>
			<td> Y </td>
			</tr>
			<tr>
			<th>중성화 여부(Y/N)</th>
			<td> Y </td>
			</tr>
			<tr>
			<th>연락처</th>
			<td>010-1234-1234</td>
			
			 
		
		
		</table>
		</div>
		
		
		<!-- 동물내용 입력 종료 -->
		
		<!-- 1:1채팅 요청 -->
		<br>
		<br>
			<div class="wrap">
  		<a href="chattingList.do" class="button">1:1채팅 요청</a>
  		</div>

		<!--  1:1 채팅 요청 종료 -->
		<hr>
		
		<!-- 댓글 태그  -->
		
		<div class="container mt-2" style="margin-left:360px"> 
	
		<h3>Comments</h3>
		
		<input class="mt-2" type="text" style="width:650px; height:50px;"><input class="btn btn-outline-success ms-2" type="submit" value="전송">
		
	
		</div>
		
		
		<!-- 댓글 태그 종료 -->
		
		
		<div class="container text-center mt-5">
		댓글 남기는 태그 
		</div>
		





	<%@ include file="../includes/footer.jsp"%>