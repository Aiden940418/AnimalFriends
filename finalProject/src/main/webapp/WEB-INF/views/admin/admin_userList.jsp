<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- header -->
<%@ include file="../includes/header_R.jsp" %>

<title>회원 관리</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>
	

<style>
	#userList {
	 	position: relative;
	    top: 55px;
 
	 }
	 
	 #horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position: relative;
	    top: 145px;
	    width: 100%;
	 }
	 
	 #secCtn {
	 	position: relative;
		top: 138px;
		left:8px;	 	
	 }
	 
	 #thrCtn {
 		margin-top: 225px;
	 }
	 
	 .dropdown-toggle::after {
	    position: relative;
	    top: 16%;
	 }



</style>



<!-- page 내용 부분 -->
<div class="contentDiv">
	
	<!-- title -->
	<div class = "container text-center" id="userList">
			<h1 class="text-center">회원 관리</h1>
	</div>
		
		<!-- 가로줄 -->
	<div id="horisonLine"></div>
	
	<div class="container mt-3" id="secCtn">

		<!-- button -->
		<div class="row mt-2" style="float: right;">

		 	<a role="button" id="memberSelectBtn"
				class="btn btn-outline-success dropdown-toggle mb-3 mx-2"
				data-bs-toggle="dropdown" aria-expanded="false"
				style="width: 150px;">회원보기</a>
				
			<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink" 
			id="memberSelect" style="width: 150px;">
				<li><a class="dropdown-item" href="memberList.do" value="전체회원" >전체회원</a></li>
				<li><a class="dropdown-item" href="iMemberList.do" value="일반회원">일반회원</a></li>
				<li><a class="dropdown-item" href="sMemberList.do" value="보호소회원">보호소회원</a></li>
				<li><a class="dropdown-item" href="qMemberList.do" value="탈퇴회원">탈퇴회원</a></li>
			</ul>
		</div>
	</div>
		  
   				
		<!-- table -->
	<div class="container" id="thrCtn" >
		<div class="row">
			<table class="table text-center table-hover"
				style="margin-left: auto; marin-right: auto;">
				<thead class="table-success">
					<tr>
						<th><input type="checkbox"  name="allCheck" id="allCheck"/></th>
						<th>번호</th>
						<th>회원유형</th>
						<th>아이디</th>
						<th>이름</th>
						<th>연락처</th>
						<th>주소</th>
						<th>가입여부</th>
					</tr>
				</thead>
					<div class="allCheck">
						<script>
						$("#allCheck").click(function() {
							
							var chk = $("#allCheck").prop("checked");
							
							if(chk) {
								$(".chBox").prop("checked", true);
								
							}else {
								$(".chBox").prop("checked", false);
							}
							
						});
						
						</script>
  				   </div> 
				
				<tbody>
					<c:choose>
						<c:when test="${empty list }">
							작성된 글이 없습니다.
						</c:when>

						<c:otherwise>
							<c:forEach items="${list}" var="dto">
								<tr>
									<td><input type="checkbox" class="chBox"></td>
									<td>${dto.mNo }</td>
									<td>${dto.mRole }</td>
									<td>${dto.mId }</td>
									<td>${dto.mName }</td>
									<td>${dto.mPhone }</td>
									<td>${dto.mAddr1 }${dto.mAddr2 }${dto.mAddr3 }</td>
									<td>${dto.mJoinYn }</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
						<script>
							$(".chBox").click(function(){
							$("#allCheck").prop("checked", false);
								
							})
						</script>
				</tbody>
			</table>
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