<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.container {
	margin-top: 21px;
	display: flex;
	flex-direction: column;
	align-items: center;
}
</style>

<!-- header -->
<%@ include file="../includes/header.jsp"%>

<div class="container">
	<p>
		<br>
	</p>
	<h1>결제완료</h1>
	<p>
		<br> <br>
	</p>
	<div class="row" style="width: 700px; background-color: lightgrey;">
		<p>
			<br> <br>
		</p>
		<p style="font-size: 24pt; text-align: center;">결제가 완료되었습니다.
		<p>
		<p>
			<br>
		</p>
	</div>


	<div class="row">
		<p>
			<br>
		</p>
		<input type="button" value="주문내역 조회" class="btn btn-outline-success mt-4"
			onclick="location.href='myGoodsBuyList.do'"
			style="width: 200px; margin-left: 50px; margin-right: 30px;">
		<input type="button" value="쇼핑하러 가기" class="btn btn-outline-success mt-4"
			onclick="location.href='goods.do'" style="width: 200px; margin-left: 30px;">
		<p>
			<br>
		</p>
	</div>



</div>


<br>

<br>


<br>


<br>


<br>

<br>

<br>



<!-- footer -->
<%@ include file="../includes/footer.jsp"%>