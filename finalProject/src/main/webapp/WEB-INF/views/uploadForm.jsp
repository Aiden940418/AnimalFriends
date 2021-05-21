<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" enctype="multipart/form-data" modelAttribute="uploadFile" action="upload.do" >
		<h3>upload form</h3>
		파일<br>
		<input type="file" name="mpfile">
		<p style="color: red; font-weight: bold;"><form:errors path="mpfile"/></p><br>
		<input type="submit" value="send">
		
	</form:form>
	
	
	
	
</body>
</html>