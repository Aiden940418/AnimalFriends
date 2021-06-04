<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
   <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
 
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Yeon+Sung&display=swap');
 	body > * {
 		font-family: 'Do Hyeon', sans-serif;
 	}
 	
 	.navbar, .container, .wrap
	, .thumnailright , .footer {
	
	font-family: 'Do Hyeon', sans-serif;
	color: #696767;
	
	}
</style>
<title>Error Page</title>
</head>
<body>

	<div class="container text-center mt-5">


	<img src="resources/images/logo.png" style="width: 200px; height: 200px; position: relative; top: -30px;">
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 400}">
		<p class="fs-1">잘못 된 요청입니다.</p>    
	</c:if>	
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 404}">
		<p class="fs-1">요청하신 페이지를 찾을 수 없습니다.</p>    
	</c:if>
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 405}">
		<p class="fs-1">요청된 메소드가 허용되지 않습니다.</p>    
	</c:if>
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 500}">
		<p class="fs-1" >서버에 오류가 발생하여 요청을 수행할 수 없습니다.</p>
	</c:if>
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 503}">
		<p class="fs-1" >서비스를 사용할 수 없습니다.</p>
	</c:if>
	
	
	
	<div class="Container text-center ">
	<p class="fs-3 mb-1">서비스의 안정화를 위한 시스템 점검 안내 </p>
	<p class="fs-3 mb-1">홈페이지의 원활한 서비스 이용을 위하여 서비스 이용이 제한되오니 </p>
	<p class="fs-3 mb-1">빠른시간 내에 더욱 안정된 서비스를 제공 할 수 있도록 노력하겠습니다</p>
    </div>   
	<button class="btn btn-outline-success mt-4" onclick="location.href='main.do'">메인페이지로 이동</button>
	
	</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	
</body>
</html>