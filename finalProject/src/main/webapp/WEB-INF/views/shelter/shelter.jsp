<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../includes/header.jsp" %>   



<style type="text/css">
	h1{
	text-align: center;
	margin-top:20px;
    margin-bottom:50px;
	}

	.container_map{
	 align-items:center;
	 text-align: center;
	display: table;
    margin: auto;
	}
	h1{
	margin-top: 20px;
	}
	.search-box{
	height: 40px;
	width: 600px;
	border: 1px solid #1b5ac2;
	background: #ffffff;

	}
	
	input{
	font-size: 12px;
	width: 400px;
	padding: 10px;
	border: 0px;
	outline: none;
	float: left;
	}
	
	button{
	width: 50px;
	height: 100%;
	border: 0px;
	background: #007bff;
	outline: none;
	float: right;
	color: #ffffff;
	}

	
</style>
<div class="container">
<h1>동물 보호소 찾기</h1>
<div class="container_map">
	<div class="search-box">
		<input type="text" placeholder="찾는 장소를 입력하세요">
		<button>검색</button>
	</div>
</div>
&nbsp;
&nbsp;
&nbsp;
	<center><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d95618.09041607325!2d127.02866617879677!3d37.49034910485204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca4116b4bf573%3A0x41be4916e1863939!2z64-E6re47Kex!5e0!3m2!1sko!2skr!4v1618653212815!5m2!1sko!2skr"
	 width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></center>

</div>
 <%@ include file="../includes/footer.jsp" %>   
