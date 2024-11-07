package mall.dto;

import java.io.Serializable;

public class Book implements Serializable{
private static final long serialVersionUID = -4274700572038677000L;
/*
직렬화 => 자바 시스템 내부에서 사용되는 객체 또는 데이터들을 외부의 자바시스템에서도 사용 할수 있도록
바이트(byte) 형태로 데이터를 변환하는 기술
역직렬화 => 바이트로 변환된 데이터를 다시 객체로 변환하는

직렬화 종류 
csv(쉼표로 구분), xml, json
serialVersionUID는 직렬화(implements Serializable)를 할때 사용한다
보통 IDE에서  Serializable인터페이스를 구현하면 serialVersionUID에 값을 할당하라고 한다
serialVersionUID는 무엇이고 왜 할당을 해야 하나요?

 Serializable을 상속하는 클래스의 경우 class의 versioning용도로 
 serialVersionUID를 변수로 사용한다 
 이때 serialVersionUID값을 명시적으로 지정하지 않으면 compiler가 계산한 값을 부여하는데
Serializable class또는 outer클래스에 변경이 있으면 
serialVersionUID 값이 바뀌게 된다
잠재적인 문제는 Serialize를 할때와 DeSerialize할때 
serialVersionUID값이 다르면 invalidClassException이 발생하여 저장된 값을 객체로 restore할수 없다
*/	
private String bookId; //도서id
private String name; //도서명
private int unitPrice;//가격
private String author;//저자
private String description;//설명
private String publisher;//출판사
private String category;//분류
private long unitsInStock;//재고개수
private String releaseDate;//출판일(월/
private String condition;//신제품 or 구제품 or 리퍼브
private String filename; //이미지 파일명 추가 getter setter메소드 실행

public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public String getBookId() {return bookId;}
public void setBookId(String bookId) {
	this.bookId = bookId;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getUnitPrice() {
	return unitPrice;
}
public void setUnitPrice(int unitPrice) {
	this.unitPrice = unitPrice;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getPublisher() {
	return publisher;
}
public void setPublisher(String publisher) {
	this.publisher = publisher;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public long getUnitsInStock() {
	return unitsInStock;
}
public void setUnitsInStock(long unitsInStock) {
	this.unitsInStock = unitsInStock;
}
public String getReleaseDate() {
	return releaseDate;
}
public void setReleaseDate(String releaseDate) {
	this.releaseDate = releaseDate;
}
public String getCondition() {
	return condition;
}
public void setCondition(String condition) {
	this.condition = condition;
}


//기본생성자 선언된 맴버변수중에 도서아이디,도서명,가격 을 매개변수로 하는 생성자를 추가로 작성합니다
public Book() {
	super();
}
public Book(String bookId, String name, Integer unitPrice) {
	this.bookId = bookId;
	this.name = name;
	this.unitPrice = unitPrice;
}









}
