<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>Implicit Objects</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>앞페이지에 의한 응답</h1>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
%>
<pre>
이 름 : <%=name %>
요청 정보 길이 : <%=request.getContentLength() %><!--  -->
클라이언트 전송방식 : <%=request.getMethod() %><!--  -->
요청 URI : <%=request.getRequestURI() %><!--URI  -->
서버 이름 : <%=request.getServerName() %><!-- 서버명 -->
서버 포트 : <%=request.getServerPort() %><!--서버 포트  -->
ip 주소 : <%=request.getRemoteAddr() %><!-- ip주소 -->
문자인코딩 : <%=request.getCharacterEncoding() %><!--  -->
프로토콜 : <%=request.getProtocol() %><!-- 요청 프로토콜 -->
콘텍스트 경로 : <%=request.getContextPath() %><!-- 콘텍스트 경로 -->
</pre>










</div>
</div>
</div>
</body>
</html>