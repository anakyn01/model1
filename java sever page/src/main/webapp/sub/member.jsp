<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>welcome</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<form action="response_process.jsp" method="post">
아이디 : <input type="text" name="id">
비밀번호 : <input type="password" name="passwd"/>
<p><input type="submit" value="전송"/></p>
</form>
</div>
</div>
</div>
</body>
</html>