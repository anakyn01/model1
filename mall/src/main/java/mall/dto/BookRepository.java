package mall.dto;

import java.util.ArrayList;


public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	//도서정보 등록페이지에 입력된 데이터를 저장하는 메소드를 만들고 등록한 정보를 출력
	private static BookRepository instance = new BookRepository();
	//한 상품을 등록 할때 마다 실제 사용하는 객체인 instance를 설정
	//클래스의 기본 생성자에 대한 객체변수 instance를 작성
	public static BookRepository getInstance() {//객체변수 instance에 대한 Getter()메소드 작성
		return instance;
	}
	//listOfBooks에 새로운 도서 정보를 등록하는 addBook()메소드를 작성합니다
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
	
	//어레이리스트 객체 생성
	public BookRepository() {
		Book book1 = new Book("ISBN1234","C# 프로그래밍", 27000);
		book1.setAuthor("황영일");
		book1.setDescription("c를 처음 접하는 독자를 대상으로 일대일 수업처럼 자세히..");
		book1.setPublisher("한빛");
		book1.setCategory("it");
		book1.setUnitsInStock(1000);
		book1.setReleaseDate("2022/10/06");
	    book1.setFilename("1.jpg");
		
		Book book2 = new Book("ISBN1235","자바마스터", 30000);
		book2.setAuthor("송미영");
		book2.setDescription("자바를 처음 배우는 학생을 위해 자바의 기본..");
		book2.setPublisher("한빛");
		book2.setCategory("it모바일");
		book2.setUnitsInStock(1000);
		book2.setReleaseDate("2023/01/01");
		book2.setFilename("2.jpg");
		
		Book book3 = new Book("ISBN1236","파이썬 프로그래밍", 30000);
		book3.setAuthor("최성철");
		book3.setDescription("자바를 처음 배우는 학생을 위해 자바의 기본..");
		book3.setPublisher("한빛");
		book3.setCategory("it모바일");
		book3.setUnitsInStock(1000);
		book3.setReleaseDate("2023/12/01");
		book3.setFilename("3.jpg");
		//만들어놓은 데이터베이스 값을 ArrayList에 담습니다
		/*listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);*/
				
	}
	//상세 정보를 가져오는 메소드 만들기 
	public Book getBookById(String bookId) {//getBookById(매개값으로 문자열 bookId)
		Book bookById = null;//class Book 에서 bookById 에 null을 초기화 설정
		
		for (int i=0; i < listOfBooks.size(); i++) {// 자바로 데이터 베이스를 설정한 변수 listOfBooks를 개별로 출력하기위한 반복문을 설정
			Book book = listOfBooks.get(i); //변수 book에 listOfBooks개별을 대입
			//출력 시킬수 있는 조건
			if(book !=null && book.getBookId() !=null && book.getBookId().equals(bookId)) {
			//개별 변수로 설정한 book 존재하고 getBookId가 존재하고 
					bookById = book;//book은 listOfBooks.get(i)개별
					break;//선택하는 구문에서 중지
				}
			}
			return bookById;//만약 0번 아이디를 선택했다면 리턴	
		}

	
	
	
	//생성된 BookRepository class를 return 메서드
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}

}
