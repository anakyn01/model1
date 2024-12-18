<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="procedure.User" %>
<%@ page import="procedure.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 이문서에가로 크기는 디바이스에 가로크기와 같다 -->
<title></title>
<link rel="stylesheet" href="${contextPath}/css/style.css"/>
<script src="${contextPath}/js/js.js"></script>
</head>
<body>

<%
//메인 페이지로 이동했을때 세션에 값이 담겨있는지 체크
String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
}
/*if(userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요')");
	script.println("window.location.href='login.jsp'");
	script.println("</script>");
}*/


int pageNumber = 1; //기본은 1페이지 할당
/*만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
확대캐스팅 자동[byte -> short -> char -> int -> long -> float -> double], 
작은캐스팅 수동[위에것을 거꾸로]]
int타입으로 캐스팅을 해주고 그 값을 pageNumber변수에 저장한다
*/
if(request.getParameter("pageNumber") != null){
	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}





%>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
	<div class="container-fluid">
	
	<!--logo -->
	<a class="navbar-brand" href="${contextPath}/index.jsp">Logo</a>
	<button 
	class="navbar-toggler" 
	data-bs-toggle="collapse"
	data-bs-target="#mynavbar"
	>
	<span class="navbar-toggler-icon"></span>
	</button>
	
	<!-- submenu -->
	<div class="collapse navbar-collapse" id="mynavbar">
		<ul class="navbar-nav me-auto">
			
			<li class='nav-item'>
				<a class="nav-link" href="${contextPath}/main.jsp">
				메인
				</a>
			</li>
			
			<li class='nav-item'>
				<a class="nav-link" href="${contextPath}/bbs.jsp">
				게시판
				</a>
			</li>
			
		    <li class='nav-item'>
				<a class="nav-link" href="${contextPath}/photo/board_list.jsp">
				포토게시판
				</a>
			</li>
			
			<li class='nav-item'>
				<a class="nav-link" href="${contextPath}/book/index.jsp">
				직렬화게시판
				</a>
			</li>
		</ul>
		
		<%
			//로그인 하지 않았을때 보여지는 화면
			if(userID == null){
		%>
		<ul class="navbar-nav me-5">	
			<li class="nav-item dropdown">
			
				<a class="nav-link"
				href="#" 
				role="button"
				data-bs-toggle="dropdown"
				>
				접속하기
				</a>
				
				<ul class="dropdown-menu">
					<li>
						<a class="dropdown-item" href="${contextPath}/login.jsp">
						로그인
						</a>
					</li>
					<li>
						<a class="dropdown-item" href="${contextPath}/join.jsp">
						회원가입
						</a>
					</li>
				</ul>
	
			
			</li>
			
		
		</ul>
		<%
		//로그인이 되어 있는 상태에서 보여주는 화면
			}  else {
		%>
		<ul class="navbar-nav me-5">	
		<li class="nav-item dropdown">
			    <a class="nav-link"
				href="#" 
				role="button"
				data-bs-toggle="dropdown"
				>
				회원관리
				</a>
				<ul class="dropdown-menu">
					<li>
						<a href="logoutAction.jsp" class="dropdown-item">
						로그아웃
						</a>
					</li>
				</ul>
			</li>
		</ul>
		<%
			}
		%>
	</div>
	
	</div>
</nav>
















