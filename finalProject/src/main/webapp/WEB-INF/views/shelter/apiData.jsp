<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnXmlOk2").click(function() {
			$.ajax({
				url : "zipXML.do",
				method : "POST",
				dataType : "json",
				data : {
					
				},
			}).done(function(data) {
				
				printResult(data);
				
			});
			
			
		});
		
		function printResult(data) {
			console.log(data);
			
			for(var i=0; i<243; i++){
				
				var item = data.response.body.items.item[i];
				
				$("#resultDiv").append(data.response.body.items.item[i].careNm);
				$("#resultDiv").append("<br>");
				$("#resultDiv").append(data.response.body.items.item[i].careAddr);
				$("#resultDiv").append("<br>");
				$("#resultDiv").append(data.response.body.items.item[i].saveTrgtAnimal);
				$("#resultDiv").append("<br>");
				$("#resultDiv").append("========================");
				$("#resultDiv").append("<br>");
				
				
			}
			
		}
		
	});
	
	
	
	
	
</script>


</head>
<body>

	<button id="btnXmlOk2">클릭!</button><br>
	
	<div id="resultDiv"></div>





</body>
</html>