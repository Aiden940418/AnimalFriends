<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!-- header -->
<%@ include file="../includes/header_R.jsp" %>

<title>Q & A 상세보기</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>

	
<!-- 내용 시작 부분 -->
<div class="contentDiv">

	<div class="container">
		<div class="row">

			<div class="row my-4" style="text-align: center;">
				<h1>Q & A</h1>

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
					<c:set var ="mNick" value="${login.mNick }"/>
					<c:set var ="dtoNick" value="${dto.mnick}"/>
					<c:if test="${mNick == dtoNick}">
						<input type="button" value="삭제하기"
							class="ms-2 btn btn-outline-success my-1"
							onclick="location.href='myQnaDelete.do?qno=${dto.qno}&qgroupno=${dto.qgroupno}'"
							style="width: 90px; float: right;"> 
						<input type="button" value="수정하기"
							class="ms-2 btn btn-outline-success my-1"
							onclick="location.href='myQnaUpdateForm.do?qno=${dto.qno}'"
							style="width: 90px; float: right;"> 
					</c:if>
						<input type="button"
							value="목록으로" class="btn btn-outline-success my-1"
							onclick="location.href='myQnaList.do'"
							style="width: 90px; float: right;">
						</td>

					</tr>

				</table>

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

