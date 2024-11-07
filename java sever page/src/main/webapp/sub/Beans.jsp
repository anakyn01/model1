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
<h1>자바빈즈 사용</h1>
<jsp:useBean id="person" class="com.dao.Person" scope="request"/>
<p>아이디 : <%=person.getId() %></p>
<p>이름 : <%=person.getName() %></p>
<p>총재산 : <%=person.getNums() %></p>
</div>
</div>
</div>
</body>
</html>