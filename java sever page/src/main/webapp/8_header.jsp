<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>응답헤더</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>응답 콘텐츠 관련 메소드</h1>
<pre>
response내장 객체는 웹 브라우저로 응답하기 위해 
MIME(Multipurpose Internet Mail Extentsions[다양한 유형의 정보를 식별하기 위한 표준입니다])유형,
문자인코딩, 오류메세지, 상태코드 등을 설정하고 가져오는 응답콘텐츠 관련
메소드를 제공합니다
- 관련메소드 -
setContentType(String type) void 웹브라우저에서 응답할 MIME유형을 설정한다
getContentType() String 웹브라우저에서 응답할 MIME유형을 가져온다
setCharacterEncoding(String charset) void 웹브라우저에서 응답할 문자인코딩을 설정한다
getCharacterEncoding() String 웹브라우저에서 응답할 문자인코딩을 설정한다
sendError(int status_code, String message) void 웹브라우저에서 응답할 오류(코드 및 오류 메세지)를 설정한다
setStatus(int statuscode) void 웹브라우저에서 응답할 HTTP코드를 설정한다
</pre>
<p>이페이지는 5초마다 새로고침이 됩니다</p>
<% response.setIntHeader("Refresh", 5); %>
<p><%=(new java.util.Date()) %></p>
<h1>응답 HTTP헤더 관련 메소드</h1>
<%
response.setHeader("Cache-control","use_cache");
response.addHeader("contentType", "text/html; charset=utf-8");
response.setDateHeader("date", 1L);
%>
<pre>
Cache-control : <%=response.getHeader("Cache-control") %>
contentType : <%=response.getHeader("contentType") %>
date: <%=response.getHeader("date") %>
</pre>
<pre>
- 서버가 웹 브라우저에 응답하는 정보를 헤더에 추가하는 기능을 제공합니다
- 헤더 정보에는 주로 서버에 대한 정보가 저장되어 있습니다
- 응답 HTTP헤더 관련 메소드 -
addCookie(cookie cookie) = void 쿠키를 추가한다
addDateHeader(String name, long date) = void 설정한 헤더이름 name에 날짜/시간을 추가한다
addHeader(String name, String value) = void 설정한 헤더이름 name에 value를 추가한다
addIntHeader(String name, int value) = void 설정한 헤더이름 name에 정수값 value를 추가한다
setDateHeader(String name, long date) = void 설정한 헤더이름 name에 날짜/시간을 설정한다
setHeader(String name, String value) = void 설정한 헤더이름 name에 문자열 value를 설정한다
setIntHeader(String name, int value) = void 설정한 헤더이름 name에 정수 값 value를 설정한다
containsHeader(String name) = boolean 설정한 헤더이름 name이 HTTP헤더에 포함되었는지 여부를 확인한다
포함하고 있는 경우는 true, 아니면 false
getHeader(String name) = String 설정한 헤더 이름 name값을 가져온다
</pre>









</div>
</div>
</div>
</body>
</html>