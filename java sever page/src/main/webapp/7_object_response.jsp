<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>Response 내장객체</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>페이지 이동 관련 메소드</h1>
<% response.sendRedirect("http://www.google.com"); %>
<pre>
- 사용자가 새로운 페이지를 요청할때 같이 페이지를 강제로 이동하는것을 리다이렉션(redirection)
이라고 합니다 
- 서버는 웹브라우저에서 다른 페이지로 강제 이동하도록 response내장객체의 리다이렉션 메소드를 제공합니다
- 페이지 이동 시에는 문자인코딩을 알맞게 설정해야 합니다
- 페이지 이동 방법
forward : 페이지에 접속시 바로 이동하기에 페이지를 이동 했는지 알수가 없다
<%--<jsp:forward page="이동할 페이지"/> --%>
redirect : 처음 요청받은 현재 jsp페이지로 부터 이동할 uRL을 웹브라우저로 리턴합니다
id와 패스워드 가 맞을경우 mypage.jsp 그렇지 않으면 login_failed.jsp
</pre>
</div>
</div>
</div>
</body>
</html>