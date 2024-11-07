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
<h1>내장 객체</h1>
<pre>
별도의 import문이 없이 자유롭게 사용할수 있습니다
그리고 스크릿틀릿 태그나 표현문 객체를 생성하지 않고 직접호출하여 사용할수 있습니다
- request : 요청 정보를 저장한다
- response : 응답 정보를 저장합니다
- out : 출력을 담당하는 출력스트림
- session : 웹브라우저의 정보를 유지하기 위해 세션정보를 저장합니다
- application : 웹어플리케이션의 콘텍스트 정보를 저장합니다
- pageContext : 페이지의 정보를 저장합니다
- page : jsp페이지를 구현한 자바 클래스로 jsp페이지 자체를 나타냅니다
- config : 설정 정보를 저장합니다
- exception : 페이지의 예외 발생을 처리합니다

모든 내장객체는 jsp컨테이너가 관리하는 객체로 
이중 request, session, application, pageContext를 이용하여 속성을 관리합니다
속성은 각각의 내장객체가 존재하는 동안에 jsp페이지 사이에서 정보를 주고 받거나
공유하는데 사용됩니다
이렇게 속성을 처리하는 메소드는 아래와 같이 네종류가 있습니다
setAttribute(String name, Object value) 반환유형 : void
해당 내장 객체의 속성 이름이 name인 속성 값을 value로 저장한다

getAttribute(String name) 반환유형 : Object
해당 내장 객체의 속성 이름이 name인 속성 값을 가져옵니다

removeAttribute(String name) 반환유형 : void
해당 내장 객체의 속성 이름이 name인 속성을 삭제합니다

getAttributeNames() 반환유형 : java.util.Enumeration
해당 내장 객체의 모든 속성 이름을 가져온다(단 pageContext내장 ㄱ개체는 이 메소드를 제공하지 않는다)
</pre>









</div>
</div>
</div>
</body>
</html>