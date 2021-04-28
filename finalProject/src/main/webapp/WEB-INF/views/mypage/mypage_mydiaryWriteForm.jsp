<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		<div class="container mt-5 text-center">
			<h1>나의 입양일기 작성</h1>
			<br>

		</div>
		<div class="container">
		<div style="margin-top: 50px; margin-left: 250px; width: 700px;">
			<form>
				<div class="form-group">
					<label>제목</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="제목을 입력해주세요"></textarea>
				</div>
				<br>
				
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" name="content" rows="15" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<br>
				
				<div>
					<div class="form-group">
						<label>사진 추가</label><br>
						<input type="file" class="form-control-file">
					</div>
				</div>
				<br>
				
				<div style="float: right;">
					<button type="submit" class="btn btn-outline-success">완료</button>
					<button type="reset" class="btn btn-outline-success" onclick="location.href='mydiary.do'">취소</button>
				</div>
			</form>
		</div>






	</div>
	</div>



	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
