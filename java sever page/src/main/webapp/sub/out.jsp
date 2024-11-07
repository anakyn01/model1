<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>out</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<%
request.setCharacterEncoding("utf-8");
String userid = request.getParameter("id");
String password = request.getParameter("passwd");
%>
<pre>
아이디 : <% out.println(userid); %>
비밀번호 : <% out.println(password); %>
다른방법
<%=userid %>
<%=password %>
</pre>










</div>
</div>
</div>
</body>
</html>