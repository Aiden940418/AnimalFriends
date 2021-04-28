<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<!-- 상단 제목부분 -->
		<div style="margin-left: 550px;">
			<h1>회원 정보 수정</h1>
			<br>
		</div>
		<br>
		
		<!-- 회원정보 수정 폼 -->
		<div class="container" style="margin-left: 300px;">
			<div>
			
				<div class="row">
					<div class="col" style="max-width: 100px;">
						<ion-icon name="person-circle-outline" style="font-size:100px;"></ion-icon>
					</div>
					<div class="col">
						<ion-icon name="cog-outline" style="font-size:30px;"></ion-icon>
					</div>
				</div>
				<br>
				
				<div style="width: 700px;">
					<label>아이디</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<br>
				
				<div style="width: 700px;">
					<label>비밀번호</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<br>
				
				<div style="width: 700px;">
					<label>이름</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<br>
				
				<div class="row">
					<div style="max-width: 610px;" class="col">
						<label>닉네임</label>
						<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
					</div>
					<div class="col">
						<button type="button" class="btn btn-secondary" style="margin-top: 25px;">중복확인</button>
					</div>
				</div>
				<br>
				
				<div style="width: 700px;">
					<label>이메일</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<br>
				
				<div style="width: 700px;">
					<label>전화번호</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<br>
				
				<div style="width: 700px;">
					<label>주소</label>
					<textarea class="form-control" name="title" rows="1" style="resize: none;" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<br>
				
				<!-- 버튼 -->
				<div style="margin-left: 300px;">
					<button type="submit" class="btn btn-primary">완료</button>&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-primary">취소</button>
				</div>
				
				
			
			
			</div>
			
		</div>
		
		
	
	
	
	
	
	</div>
	
	
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>

</body>
</html>