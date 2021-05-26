<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
		.box {
			width: 300px;
			height: 300px; 
			border-radius: 30%;
			overflow: hidden;
			border: 3px	solid #54BD54;
			position:relative;
			left:270px;
				
		}
	
		.profile {
		    width: 100%;
		    height: 100%;
		    object-fit: cover;
		}
							      
</style>
	
	
	
	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		
		<div class="container">

		<div class="row">
			<!-- title -->
			<div class="row my-4" style="text-align: center;">
				<h1>프로필 사진 등록 및 수정</h1>
			</div>
			<!-- form -->
			<div style="margin: auto; text-align: center;">
				<form action="myDrPrfRorURes.do" method="post" style="display: inline-block;" enctype="multipart/form-data">
					<table>

						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">프로필 이미지</button></th>
							<td><input type="file" class="form-control my-1" id="profileImg" name="file"
								size="100" placeholder="이미지를 등록해주세요."></td>
						</tr>
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">프로필 미리보기</button></th>
							<td id="select_img" style="table-layout:auto; text-algin:center;">
									<div class="box my-3">
										<c:choose>
											<c:when test="${!empty prf }">
												<img class="profile" src="resources/${prf.profileImg }"/>
											</c:when>
											<c:otherwise>
												<img class="profile" src=""/>
											</c:otherwise>
							        	</c:choose>
							        </div>
							
							</td>
							
						</tr>
						<tr>
							<th><button type="button" class="btn btn-outline-success mx-3 my-1"
									style="width: 130px; pointer-events: none;">이미지 경로</button></th>
							<td><%=request.getRealPath("/") %></td>
						</tr>
			
						<script>
								  $("#profileImg").change(function(){
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     	$("#select_img img").attr("src", data.target.result).width(300);        
								    }
								    reader.readAsDataURL(this.files[0]);
								   }
								  });
						</script>
						
						<tr >
							<td colspan="2">
								<input type="submit" value="작성" class="btn btn-outline-success"
										style="width: 90px; ">
								<input type="button" value="취소" class="btn btn-outline-success" onclick="location.href='mydiary.do'"
										style="width: 90px;"> 
							</td>

						</tr>
					</table>
				</form>
			</div>


				

				




		</div>
		<!-- footer -->
		<%@ include file="../includes/footer.jsp"%>
	</div>
	</div>
	