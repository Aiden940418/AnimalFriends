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
				method : "GET",
				dataType : "json",
				data : {
					
				},
			}).done(function(data) {
				
				console.log(data);
				printResult(data);
				
			});
			
			
		});
		
		function printResult(data) {
			var out = " ajax 데이터 테스트 : ";
			
			$(data).find("item").each(function() {
				var item = $(this);
				var carenm = item.find("carenm").text();
				
				out += carenm + "<br>";
			});
			
			$("#resultDiv").html(out);
		}
		
	});
	
	
	
	
	
</script>


</head>
<body>

	<button id="btnXmlOk2">클릭!</button><br>
	
	<div id="resultDiv"></div>





</body>
</html>