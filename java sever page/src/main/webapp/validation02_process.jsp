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
<h1>입력에 성공 했습니다</h1>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String password = request.getParameter("password");
%>
<p>아이디 : <%=id %>
<p>비밀번호 : <%=password %>
</div>
</div>
</div>
</body>
</html>