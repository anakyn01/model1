<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>사용자 정의태그</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>taglib 디렉티브태그</h1>
<h1 class="my-3">c:if</h1>
<a href="<c:url value='/Null.jsp'/>">view test</a>
<h1>Formating : 데이터의 포맷형태등을 정해주거나 변경할때 사용</h1>
<fmt:formatDate value="${today}" type="date"/>
<p>${today}</p>

<%-- <code>c:if test="조건 판별식" var="변수명" scope="변수 공유범위"</code>
<c:if test="expression" var="name" scope="scope">
body content
</c:if>
<c:if test="${!login}">
<p><a href="/login.jsp">로그인</a></p>
</c:if>
<c:if test="${login}">
<p><a href="/loginOut.jsp">로그인</a></p>
</c:if>--%>

<mark>
<c:out value="Jstl core 태그 라이브러리"/>
</mark>
<h2>forEach</h2>
<c:forEach var="k" begin="1" end="10" step="1">
<!-- 변수=k 시작=1 끝=10 1씩 증가 -->
<c:out value="${k}"/>
</c:forEach>

<h2>set</h2>
<c:set var="name" value="오리" scope="page"/>
<c:set var="age" value="46" scope="page"/>
<c:set var="height" value="179.5" scope="page"/>
<c:set var="weight" value="90.5" scope="page"/>
<c:set var="bmi" value="${weight div (height * height * 0.0001)}" scope="page"/>
<c:set var="health" value="${bmi ge 25 ? '비만':'정상' }" scope="page"/>
<c:set var="test" value="test" scope="page"/>
<h1>이름 : ${name}</h1>
<h1>나이 : ${age}</h1>
<h1>bmi : ${bmi}</h1>
<h1>건강상태 : ${health}</h1>
<h1>test : ${test}</h1>

<pre>
- 현재 jsp페이지의 표현언어,JSTL,사용자정의태그(custom tag)등 태그 라이브러리를 설정하는데 
형식은 아래와 같습니다
<%--<%@ taglib uri="경로" prefix="태그 식별자"--%>
- 일반적으로 웹 애플리케이션에서 쉽게 접할수 있는것이 jstl태그 라이브러리인데 
자주사용하는 핵심기능을 제공합니다 반복문, 조건문과 같은 논리적 구조작업,xml문서 조작, 국제화 태그조작
sql조작 수행을 위한 태그등을 지원합니다
</pre>
<h1>Core</h1>
<pre>
c:set : 변수선언
c:remove : 변수제거
c:out :변수출력
c:catch : 예외처리
c:if : 조건문 else는 없습니다

c:choose,c:otherwise
c:when : switch문과 비슷하다

c:forEach : 반복문
c:forTokens : 구분자로 분활하여 반복

c:url : url생성
c:param : 파라미터 추가
c:import : 페이지 첨부
c:redirect : URL 이동
</pre>
<h1>set, out</h1>
<c:set var="intArray" value="<%=new int[]{1,2,3,4,5} %>"/>
<c:out value="${country}" default="korea" escapeXml="true"/>
<p>출력 : ${country}</p> 
<p>출력 : ${intArray[0]}</p> 

<c:catch var="ex">
<%= 1/0 %>
</c:catch>
<mark class="fs-4 text-danger">
Error Msg: ${ex} <br/>
</mark>








</div>
</div>
</div>
</body>
</html>