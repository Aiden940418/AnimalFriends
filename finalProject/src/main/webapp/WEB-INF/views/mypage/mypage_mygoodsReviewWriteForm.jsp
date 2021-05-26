<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
		
		 <div class="container mt-5 text-center">
		
			<h1>리뷰 등록</h1>
				<br><br>

				<div class="container text-center" style="margin-left:130px">
				
				<!-- 여기서 부터 전송 정보 입력 -->
				<form action="mypageReviewWrite.do" method="POST" enctype="multipart/form-data">
					
					<input type="hidden" name="mNo" value="${login.mNo}" >
			
					<table>
						
						<!-- 제품이름 보여주기 -->
						<tr>
							<th>
								<button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">주문번호</button>
							</th>
							<td>
								<input type="text" class="form-control my-1" name="gNo" id="gNo"
									style="width:500px; margin:10px;" value="${dto.gName }"
									readonly="readonly">
							</td>
						</tr>
						
						<!-- 제목 작성 -->
						<tr>
							<th>
								<button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">제목</button>
							</th>
							<td>
								<input type="text" class="form-control my-1" name="gRewTitle"
									style="width:500px; margin:10px;">
							</td>
						</tr>
						
						<!-- 내용 작성 칸 -->
						<tr>
							<th>
								<button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">상세 내용 작성</button>
							</th>
							<td>
								<input type="text" style=" margin:10px; width:500px; height:200px; margin-right:400px; " 
									name="gRewContent">
							</td>
						</tr>
						
						<!-- 취소버튼, 작성버튼 -->
						<tr>
							<td colspan="2">
								<input type="button" value="취소" class="btn btn-outline-success mt-5"
									onclick="location.href='mygoodsReviewWriteForm.do'"
									style="width:130px; pointer-events: none;float: right;margin-right:300px;">
							 	<input type="submit"
									value="작성" class="btn btn-outline-success mt-5"
									style="width:130px; float:right; margin-right:10px;">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	

	
	
	

	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
