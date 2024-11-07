<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mall.dto.Book" %>
<%@ page import="mall.dto.BookRepository" %>
<%--<jsp:useBean id="bookDAO" class="mall.dto.BookRepository" scope="session"/> --%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>

<div class="container-fluid py-4">
<%@ include file="include/menu.jsp" %>

<div class="p-5 mb-4 bg-body-secondary rounded-3">
	<div class="container-fluid py-5">
	<h1 class="display-5 fw-bold">도서목록</h1>
	<p class="col-md-8 fs-4">BookList</p>
	</div>
</div> 
<%
BookRepository dao=BookRepository.getInstance();
//BookRepository클래스의 객체 변수 instance를 호출하는 getInstance()작성
//이를 통해서 getAllBooks() 메소드를 호출하여 반환 결과값을 ArrayList<Book>객체 타입의 변수 listOfBooks에 저장해 줍니다
ArrayList<Book> listOfBooks = dao.getAllBooks();
%>
<div class="row"><!-- 줄 -->
<%
for (int i=0; i < listOfBooks.size(); i++) {
	Book book = listOfBooks.get(i);
%>
<div class="col-md-4"><!-- 개별 내용을 담을 칸 -->
	<div class="h-100 p-2">
	<img src="${pageContext.request.contextPath}/resources/images/<%=book.getFilename() %>"/>
	<h5><b><%=book.getName() %></b></h5>
	<p><%=book.getAuthor() %>
	<br><%=book.getPublisher() %> | <%=book.getUnitPrice() %>원
	<br><%=book.getDescription() %>
	<br><%=book.getUnitPrice() %>원
	<div class="my-5 d-flex justify-content-end">
		<div class="btn-group">
			<a href="./book.jsp?id=<%=book.getBookId()%>" class="btn btn-outline-primary">view</a>
		</div>
	</div>
	<!-- 설정된 데이터 베이스 3개중에 개별을 선택할수 있게 a태그로  하이퍼링크 태그 설정
	? 쿼리스트링 (Query String) 
	url뒤에 입력 데이터를 함께 제공하는 가장 단순한 데이터 전달방법
	웹개발에서 데이터를 요청하는 방식중 주로 GET방식의 데이터를 요청할때 쓰는 방법
	-->
	</p>
	</div>
</div>
<%} %>
</div>
<%@ include file="include/footer.jsp" %>
</div>

</body>
</html>







