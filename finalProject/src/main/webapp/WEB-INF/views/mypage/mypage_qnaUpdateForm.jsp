<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header -->
<%@ include file="../includes/header_R.jsp" %>

<title>Q & A 수정</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>

<!-- page -->
<div class="contentDiv">

	<div class="container">
		<div class="row">
			<div class="row my-4" style="text-align: center;">
				<h1>QnA 수정</h1>

			</div>

			<div style="margin: auto; text-align: center;">
				<form action="myQnaUpdateRes.do" style="display: inline-block;">
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
								onclick="location.href='myQnaList.do'"
								style="width: 90px; float: right;"> 
								<input type="submit" value="수정" class="btn btn-outline-success mx-3 my-1"
								style="width: 90px; float: right;"></td>

						</tr>
					</table>
				</form>
			</div>
		</div>
		
	</div>

</div>


		<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>
