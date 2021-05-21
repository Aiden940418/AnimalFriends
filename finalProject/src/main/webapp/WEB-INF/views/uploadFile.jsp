<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>file: ${fileobj.name }</h3>
	 
	 <form action="download.do" method="post">
	 	<input type="hidden" name="name" value="${fileobj.name }" >
	 	<input type="submit" value="download" >
	 </form>
	 
</body>
</html>