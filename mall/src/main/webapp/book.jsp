<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="mall.dto.Book, mall.dto.Book, mall.dto.BookRepository"%>
<html> 
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>mall :: view</title>
</head>
<body>
<div class="container py-4">
<%@ include file="include/menu.jsp" %>

<div class="p-5 mb-4 bg-body-tertiary reounded-3">
	
	<div class="container-fluid py-5">
		
		<h1 class="display-5 fw-bold">도서정보</h1>
		<p class="col-md-8 fs-4">BookInfo</p> 
	
	</div>

<%
String id = request.getParameter("id");//변수 id에 요청한 파라미터 id 를 대입하고
BookRepository dao=BookRepository.getInstance();
//BookRepository클래스의 객체변수 instance를 호출하는 getInstance()메소드를 작성합니다
Book book = dao.getBookById(id);//변수 북은 useBean id bookDAO가 개별 id를 얻는다
%>
</div>
<!-- 불러온 id에 세부적인 정보표시 -->
<div class="row">

<div class="col-md-6">
<img src="./resources/images/<%=book.getFilename() %>"/>
</div>

<div class="col-md-6">
<h1 class="my-3"><%=book.getName() %></h1>
<pre>
<b>- 도서설명 -</b>
<%=book.getDescription() %>
도서코드 : <span class="badge text-bg-danger"><%=book.getBookId() %></span>
저자 : <%=book.getAuthor() %>
출판사 : <%=book.getPublisher() %>
출판일 : <%=book.getReleaseDate() %>
분류 : <%=book.getCategory() %>
재고수 : <%=book.getUnitsInStock() %>
<h4><%=book.getUnitPrice() %>원</h4>
</pre>
<div class="d-flex justify-content-end my-5"><!-- 디렉션을 오른쪽으로 -->
	<div class="btn-group">
	<a href="#" class="btn btn-info">도서주문 &raquo;</a>
	<a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
	</div>
</div>
</div>
</div>













<%@ include file="include/footer.jsp" %>
</div>
</body>
</html>