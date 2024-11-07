<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
import="mall.dto.Book, mall.dto.BookRepository, java.util.*, com.oreilly.servlet.*, com.oreilly.servlet.multipart.*"%>
<%
request.setCharacterEncoding("UTF-8");

//파일을 올릴경우 추가되는 부분
String filename="";
String realFolder="C:\\dev_hwang\\4_workspace\\mall\\src\\main\\webapp\\resources\\images";
int maxSize = 5 * 1024 * 1024; //최대 업로드 파일크기 5mb
String encType="utf-8"; //인코딩 유형

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
//파일명이 똑같을 경우 파일명 => 파일명(1)=> 파일명(2)
//위에 까지가 멀티 파트업로드 할때 추가되는 영역 

String bookId = multi.getParameter("bookId");//불러오는 타입에 명령어를 바꿔서 거기에 맞게 바꿔야 한다
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice");
String author = multi.getParameter("author");
String publisher = multi.getParameter("publisher");
String releaseDate = multi.getParameter("releaseDate");
String description = multi.getParameter("description");
String category = multi.getParameter("category");
String unitsInStock = multi.getParameter("unitsInStock");
String condition = multi.getParameter("condition");

//add
Enumeration files = multi.getFileNames();
String fname = (String)files.nextElement();
String fileName = multi.getFilesystemName(fname);

Integer price;//가격 래퍼클래스를 사용하여 값을 리턴

if (unitPrice.isEmpty())//만약 unitPrice가 비워져 있다면
	price=0;//래퍼 클래스 덕에 
else
	price=Integer.valueOf(unitPrice);//가격
	
long stock;

if(unitsInStock.isEmpty())
stock = 0;
else
	stock=Long.valueOf(unitsInStock);

BookRepository dao = BookRepository.getInstance();
//폼페이지에 입력된 데이터를 저장하도록 BookRepository addBook()메소드를 호출합니다
Book newBook = new Book();
newBook.setBookId(bookId);
newBook.setName(name);
newBook.setUnitPrice(price);
newBook.setAuthor(author);
newBook.setPublisher(publisher);
newBook.setReleaseDate(releaseDate);
newBook.setDescription(description);
newBook.setCategory(category);
newBook.setUnitsInStock(stock);
newBook.setCondition(condition);
newBook.setFilename(fileName);

dao.addBook(newBook);

response.sendRedirect("books.jsp");//메인페이지로 리턴
%>