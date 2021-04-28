<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			#title{
				text-align: center;
				font-weight: bold;
			}
			#wrap{
				width:100%;
			    height:100%;
			}
			#wrap .box{ 
			    width:600px;
			    height:100%;
			    margin:0 auto;
			}
			#thumnail{
				width: 75px;
				height: 75px;
				border-radius: 70%;
				border: 1px solid black;
				overflow: hidden;
				float: left;
			}
			.thumnailimg{
				width: 100%;
				height: 100%;
				object-fit: cover;
			}
			#thumnailright{
				width: 75px;
				height: 75px;
				float: left;
			}
			#likenum{
				font-weight: blod;
				width: 200px;
				height: 30px;
				float: right;
			}
			#smallimg{
				width: 30px;
				height: 30px;
				
			}
			.left{
				float: left;
			}
			.right{
				float: right;
			}
			#recomentimg{
				width: 50px;
				height: 50px;
				border-radius: 70%;
				border: 1px solid black;
				overflow: hidden;
			}
			.insertimg{
				width: 100%;
				height: 100%;
				object-fit: cover;
			}
			table{
				width: 100%;
			}
		</style>
		
	</head>
	<body>
		<!-- header -->
		<%@ include file="../includes/header.jsp" %>   
		
		<!-- body -->		
		<h1 class="container mt-5" id="title">입양일기</h1>
		
		<!-- bodybox -->
		<div id="wrap">
			<div class="box">
				<!-- thumnail -->
				<div>
					<div id="thumnail">
							<img class="thumnailimg" alt="thumnail" src="resources/images/adopt_cat3.jpeg">
					</div>
					<div id="thumnailright">
						<table>
							<tr><th>userID</th></tr>
							<tr><td>&nbsp</td></tr>
							<tr><th>Date</th></tr>
						</table>
					</div>
				</div>
				<div>
					<img class="insertimg" alt="insertimg" src="resources/images/adopt_cat3.jpeg">
				</div>
				<div>
					<table>
						<!-- like -->
						<tr>
							<th>userID</th>
							<td colspan="4">&nbsp</td>
							<td align="right">
								<div id="smallimg" class="right">
									<img class="insertimg" alt="like" src="resources/images/diary_like.png">
								</div>
								<div id="likenum" class="right">
									좋아요 &nbsp 10
								</div>
							</td>
						</tr>
						<!-- content -->
						<tr>
							<th colspan="6">
									content
							</th>
						</tr>
						<!-- chat -->
						<tr>
							<th colspan="6">
								<div id="smallimg" class="left">
									<img class="insertimg" alt="like" src="resources/images/diary_chat.png">
								</div>
							</th>
						</tr>
						<tr>
							<th colspan="6">
								<div>
									<input type="text" placeholder="내용을 입력해주세요" name="recoment" style="width: 541px;">
									<input type="submit" value="등록">
								</div>
							</th>
						</tr>
						<tr>
							<th>
								<div id="recomentimg" class="left">
									<img class="thumnailimg" alt="thumnail" src="resources/images/adopt_cat1.jpeg">
								</div><br>
								userID
							</th>
							<th colspan="5">
								<input type="text" readonly="readonly" value=" 예뻐요~~!" style="width: 540px;">
							</th>
						</tr>
					</table>
				</div>
			</div>
		</div>

	
	
		<!-- footer -->
	 	<%@ include file="../includes/footer.jsp" %>  
	 </body>
</html> 
