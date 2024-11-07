<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>welcome</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<%
String hostValue = request.getHeader("host");
String alValue = request.getHeader("accept-language");
%>
<%
Enumeration en = request.getHeaderNames();
while (en.hasMoreElements()) {
String headerName = (String) en.nextElement();
//첫번째 객체가 리턴되고 실행후에 커서는 데이터를 지나서 두번째 데이터가 있는곳으로 가르킨다 iterator의 next()와 같음
String headerValue = request.getHeader(headerName);
%>
<%=headerName %> : <%=headerValue %><br>
<%
}
%>
<p>호스트명 : <%=hostValue %></p>
<p>설정된 언어 : <%=alValue %></p>
<h1>요청 HTTP헤더 관련 메소드의 종류</h1>
<table class="table table-striped">
<thead>
<tr>
<th>요청 HTTP헤더 관련 메소드</th>
<th>반환 유형</th>
<th>설명</th>
</tr>
</thead>
<tbody>
<tr>
<td>getHeader(String name)</td>
<td>String</td>
<td>설정한 name의 헤더값을 가져옵니다</td>
</tr>
<tr>
<td>getHeader(String name)</td>
<td>Enumeration</td>
<td>설정한 name의 헤더목록값을 가져옵니다</td>
</tr>
<tr>
<td>getHeaderNames()</td>
<td>Enumeration</td>
<td>모든 헤더 이름을 가져옵니다</td>
</tr>
<tr>
<td>getIntHeader(String name)</td>
<td>int</td>
<td>설정한 name의 헤더값을 정수로 가져옵니다</td>
</tr>
<tr>
<td>getDateHeader(String name)</td>
<td>long</td>
<td>설정한 name의 헤더값을 시간값으로 가져옵니다</td>
</tr>
<tr>
<td>getCookies</td>
<td>javax.servlet.http.Cookie</td>
<td>모든 쿠키 값을 가져온다</td>
</tr>
</tbody>
</table>









</div>
</div>
</div>
</body>
</html>