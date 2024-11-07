<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true" isScriptingEnabled="false"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>isELIgnored</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1></h1>
<% request.setAttribute("RequestAttribute", "request 내장 객체"); %>
${requestScope.RequestAttribute}

<%! int nums =3; %>
<% out.println(nums); %>
</div>
</div>
</div>
</body>
</html>