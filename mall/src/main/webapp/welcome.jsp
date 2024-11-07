<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>welcome</title>
</head>
<body>
<%! String greeting="쇼핑몰에 오신걸 환영합니다"; 
String tagline ="Welcome to Market!";
%>
<div class="container py-4"><!-- 패딩 (안쪽 여백) 4 -->
<header class="pb-3 mb-4 border-bottom">
<a href="./welcome.jsp" 
class="text-decoration-none text-dark d-flex align-items-center">
<svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd"><path d="M22 11.414v12.586h-20v-12.586l-1.293 1.293-.707-.707 12-12 12 12-.707.707-1.293-1.293zm-6 11.586h5v-12.586l-9-9-9 9v12.586h5v-9h8v9zm-1-7.889h-6v7.778h6v-7.778z"/></svg>
<span class="fs-4">HOME</span>
</a>
</header>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
	<div>
	<h1><%=greeting %></h1>

	<p>Market</p>
	</div>
	<div>
	<h3><%=tagline %></h3>
<%
Date day =new java.util.Date();
String am_pm;
int hour = day.getHours();
int minute = day.getMinutes();
int second = day.getSeconds();
if (hour / 12==0){
am_pm = "AM";
}else{
am_pm = "PM";
hour = hour -12;
}
String CT=hour + ":" + minute + ":"+second + am_pm;
out.println("현재 접속 시각 :" + CT+"\n");
%>
	</div>
</div>

<footer class="pt-3 mt-3 text-body-secondary border-top">
&copy; market
</footer>









</div>
</body>
</html>