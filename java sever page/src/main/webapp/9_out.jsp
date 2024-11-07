<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>out 내장객체</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<form action="sub/out.jsp" method="post">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="text" name="passwd"><br>
<input type="submit" value="전송"/>
</form>
<%
out.println("오늘의 날짜 및 시각" + "<br>");
out.println(java.util.Calendar.getInstance().getTime());
%>
<h1>out 내장객체</h1>
<pre>
out내장 객체는 웹브라우저에서 데이터를 전송하는 출력스트림 객체 입니다
jsp컨테이너는 jsp페이지에 사용되는 모든 표현문 태그와 HTML, 일반 텍스트 등을 
out내장 객체를 통해 웹브라우저에 그대로 전달합니다
out 내장객체는 스크립틀릿 태그에 사용하여 단순히 값을 출력하는 표현문태그 와 같은 결과를 얻을수 있다
- out 내장 객체 메소드의 종류 -
print(String str) void : 설정된 str값을 웹 브라우저에 출력한다 inline
println(String str) void : 설정된 str값을 웹 브라우저에 출력한다 block(출력자체가 한줄)
newLine() void 줄바꿈을 출력
getBufferSize() int : 현재 출력버퍼의 크기를 가져온다
getRemaining() int : 현재 남아있는 출력버퍼의 크기를 가져온다
clear() void : 현재 출력버퍼에 저장되어 있는 내용을 웹브라우저에 전송하지 않고 비운다
만약 버퍼가 이미 플러시 되었다면 IOException이 발생한다
clearBuffer() void : 현재 출력버퍼에 저장되어 있는 내용을 웹브라우저에 전송하지 않고 비운다
만약 버퍼가 이미 플러시 되었다면 IOException이 발생하지 않는다
flush() void : 현재 출력버퍼에 저장되어 있는 내용을 웹브라우저에 전송하고 비운다
isAutoFlush() boolean : 출력 버퍼가 채워졌을때의 처리를 결정한다
자동으로 플러시하는 경우 true를 리턴하고, 그렇지 않은 경우 false를 리턴한다
</pre>

<pre>
내장객체
- request 내장 객체
- response 내장 객체
- out 내장 객체
</pre>

</div>
</div>
</div>
</body>
</html>