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
<h1>디렉티브 태그</h1>
<%@ page import="java.util.Date" %><!--import -->
Today is <%=new Date() %>
<h1>session</h1>
<%@ page session="false" %><!-- 로그인이 안될경우 ? -->
<h1>buffer속성:none, </h1>
<%@ page buffer="32KB" %>
버퍼크기를 설정하여 사용하면 출력버퍼에 기록후 웹브라우저에 보내줍니다
이렇게 설정하게 되면 페이지가 완료되는 경우나 출력이 명확하게 되는 
경우를 제외하고 출력버퍼에 최소하 내용이 32KB누적될때 까지 전송되지 않습니다
<%@ page autoFlush="true" %>
<%@ page isThreadSafe="true" %>
<%@ page info="이문서는 페이지 디렉티브에 관련된 내용입니다" %>
Today is <%=new java.util.Date() %>
<pre>
디렉티브 태그(directive tag) : jsp페이지를 어떻게 처리할 것인지 설정하는 태그입니다
jsp페이지가 => 서블릿 프로그램에서 서블릿 클래스로 변환할때 jsp페이지와 
관련된 정보를 jsp컨테이너에 지시하는 메세지 입니다
디랙티브 태그는 3가지 종류를 가지고 있습니다
page : jsp페이지에 대한 정보를 설정합니다
<%--<%@ page %> --%>
콘텐츠 유형의 문서, 사용할 자바 클래스, 오류 페이지 설정, 세션 사용여부,출력 버퍼의 존재유무등과 같이 
jsp컨테이너가 jsp페이지를 실행하는데 필요한 정보를 설정합니다
language = 사용할 프로그래밍 언어를 설정합니다
contentType = 생성할 문서의 콘텐츠 유형을 설정합니다(text/html)
pageEncoding = 문자인코딩 ISO-8859-1
import = 불러올 자바클래스 사용할때
session = 현재 jsp페이지의 세션 사용여부를 결정한다 false
buffer = 현재jsp페이지의 출력 버퍼크기를 설정한다 (8kb)
autoFlush = 출력버퍼의 동작제어를 설정합니다
isThreadSafe = 현재페이지의 멀티스레드 어용 여부를 설정합니다
info = 현재jsp페이지의 대한 설명을 설정합니다
errorPage = 커스텀으로 jsp페이지에서 오류가 발생했을때 보여줄 오류 페이지를 설정합니다
isErrorPage = 현재 jsp페이지가 오류 페이지인지 여부를 설정합니다
isElIgnored = jsp의 표현언어(EL)지원 여부를 설정합니다
isScriptingEnabled = 현재 페이지의 스크립트(선언문,스크립틀릿,익스프레션) 태그사용여부를 설정합니다

include : jsp페이지의 특정 영역에 다른 문서를 포함한다
<%--<%@ include file="파일명"%> --%>
- 현재 jsp페이지와 같은 디렉토리에 있으면 파일명만 설정하고
- 그렇지 않으면 전체(url[상대 경로])를 설정합니다
- 태그가 사용된 위치에 설정된 파일에 원본내용을 그대로 붙여넣은 다음
전체페이지를 자바코드(서블릿)로 변환합니다
- header, footer 등 공통된 부분을 별도의 jsp파일로 만들어 모듈화 할수 있습니다


taglib : jsp페이지에서 사용할 태그 라이브러리를 설정한다
<%--<%@ taglib %> --%>
</pre>
</div>
</div>
</div>
</body>
</html>