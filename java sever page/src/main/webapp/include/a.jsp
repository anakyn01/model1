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
<h1>A</h1>
<%!
int pageCount=0;
void addCount(){
	pageCount++;
}
%>
<% addCount(); %>
<p>이 페이지의 방문은 <%=pageCount %>번째 입니다</p>









