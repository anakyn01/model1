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
<h1>아래 스크립틀릿이 연산되도록  useBean을 작성하세요</h1>
<jsp:useBean id="bean" class="com.dao.Calculator"/>
<%
int m = bean.process(5);
out.print("5의 3제곱 :" + m);
%>
</div>
</div>
</div>
</body>
</html>