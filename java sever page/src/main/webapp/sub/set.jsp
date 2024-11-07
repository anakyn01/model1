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
<h1>print</h1>
<jsp:useBean id="person" class="com.dao.Person" scope="request"/>
<p>아이디 : <% out.println(person.getId()); %></p>
<p>이름 : <% out.println(person.getName()); %></p>
<hr>
<h1 class="my-3">getProperty : <small>useBean액션 태그와 함께 자바빈즈의 Getter()메소드에 접근해서 맴버변수인 프로퍼티의 값을 가져오는 태그형식<small></small></h1>
<p>아이디 :<jsp:getProperty name="person" property="id"/></p>
<p>이름 :<jsp:getProperty name="person" property="name"/></p>
<h1 class="my-3">위에 값을 다르게 세팅할수 있음</h1>
<jsp:setProperty name="person" property="id" value="9"/>
<jsp:setProperty name="person" property="name" value="홍길동"/>
<p>아이디 :<jsp:getProperty name="person" property="id"/></p>
<p>이름 :<jsp:getProperty name="person" property="name"/></p>
</div>
</div>
</div>
</body>
</html>