<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>Action :: forward</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>이파일은 첫번째 파일입니다</h1>
<jsp:forward page="second.jsp">
<jsp:param name="date" value="<%=new java.util.Date() %>"/>
</jsp:forward>








</div>
</div>
</div>
</body>
</html>