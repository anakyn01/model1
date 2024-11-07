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
<h1>인클루드를 테스트 하는 페이지 입니다</h1>
<pre>
flush속성 값은 설정한 외부 파일로 제어가 이동할때
jsp페이지가 출력버퍼에 저장한 결과를 처리합니다
기본값은 false이고 
true로 설정하면 외부파일로 제어가 이동할때 
현재 jsp페이지가 지금까지 출력버퍼에 저장된 내용을
웹 브라우저에 출력하고 출력버퍼를 비웁니다
pagedirective include
가장 큰 결정적인 방식에 차이는
포함된 외부파일이 실행된후 현제 jsp페이지로 제어전환
</pre>
<jsp:include page="second.jsp" flush="false"/>











</div>
</div>
</div>
</body>
</html>