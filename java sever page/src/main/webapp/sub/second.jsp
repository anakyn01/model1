<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>두번째 페이지 입니다</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>두번째 페이지 입니다</h1>
<p>Today is : <%=new java.util.Date() %></p>
<h1>파라미터로 얻은값 : <%=request.getParameter("date")%></h1>









</div>
</div>
</div>
</body>
</html>