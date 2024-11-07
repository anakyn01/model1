<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 어떤파일이든 한글때문에 표기해야 합니다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>
<title>java server page</title>
</head>
<body><!-- 일반적인 헤더는 바디태그 open까지 남김 -->
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
<div class="container-fluid">

<!--logo -->
<a class="navbar-brand" href="/java_sever_page/index.jsp">JSP</a>

<!-- 햄버거 메뉴 -->
<button 
class="navbar-toggler" 
data-bs-toggle="collapse"
data-bs-target="#mynavbar"
>
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="mynavbar">
	<!-- url -->
	<ul class="navbar-nav me-auto">
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">1.페이지 디렉티브</a>
		</li>	
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">2.페이지의 스크립트 요소</a>
		</li>
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">3.연산자 제어문</a>
		</li>
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">4.내장객체 와 영역</a>
		</li>
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">5.액션 태그</a>
		</li>
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">6.에러처리</a>
		</li>
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">7.자바빈</a>
		</li>
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">8.데이터베이스</a>
		</li>
		
		<li class="nav-item">
			<a href="sub/page_1.jsp" class="nav-link">9.쿠키와 세션</a>
		</li>
	</ul>
	
	<!-- 검색창 -->
	<form action="" class="d-flex">
	<input type="text" placeholder="search" class="form-control">
	<button class="btn btn-primary">Search</button>
	</form>
</div>




</div>
</nav>










<div class="container">
<div class="row">
