<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header -->
<%@ include file="../includes/header.jsp"%>


<div class="my-4" style="text-align: center;">
	<h1>공지사항</h1>

</div>

<div>
	<table class="table" style="width: 40%; margin-left: auto; margin-right: auto;">
		<tr>
			<td style="text-align:center;"><h3>제목이 들어갈 공간</h3></td>
		</tr>

		
		<tr style="text-align: left;">
			<td>등록일:&nbsp;</td>
		</tr>


		<tr>
			<td><textarea rows="20" cols="100" class="form-control my-1" id="" readonly></textarea></td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="button" value="목록으로"
				class="btn btn-primary my-1" onclick="location.href='mypage_noticeList.jsp'"
				style="width: 90px; float: right;">
				
				
			</td>

		</tr>

	</table>
	
</div>
<!-- 화면 구성을 위해 넣어둔 여백으로 추후 삭제하면 됨 -->
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
<%@ include file="../includes/footer.jsp"%>