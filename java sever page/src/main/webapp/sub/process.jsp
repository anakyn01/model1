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
<h1>Response</h1>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String address = request.getParameter("address");
String text = request.getParameter("text");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>
<p>아이디 : <%=id %></p>
<p>패스워드 : <%=pw %></p>
<p>이름 : <%=name %></p>
<p>주소 : <%=address %></p>
<p>전달받은 내용</p>
<p>
<%=text %>
</p>
</div>
</div>
</div>
</body>
</html>