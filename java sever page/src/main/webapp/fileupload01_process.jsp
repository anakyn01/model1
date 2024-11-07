<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
import="com.oreilly.servlet.*,com.oreilly.servlet.multipart.*,java.util.*,java.io.*"
%>
<%
MultipartRequest multi = new MultipartRequest(
		request, "C:\\dev_hwang\\4_workspace\\java sever page\\src\\main\\webapp\\upload", //파일 경로
		5 * 1024 * 1024,//5메가
		"utf-8",//인코딩
		new DefaultFileRenamePolicy());//기본 파일이름새로쓰는 정책
		
//add
Enumeration params = multi.getParameterNames();
//폼페이지에서 전송된 요청 파라미터를 받도록 MultipartRequest객체 타입의 getParameterNames()메소드를 작성합니다
		
while (params.hasMoreElements()) { //파라미터로 얻은 모든 네임을 열거
//폼페이지에서 전송된 요청 파라미터가 없을때까지 반복하도록 hasMoreElements()작성
	String name = (String)params.nextElement();
//폼페이지에서 전송된 요청 파라미터의 이름을 가져오도록 nextElement()메소드를 작성합니다
    String value = multi.getParameter(name);
//위에 행에서 얻은 요청파라미터 이름으로 MultipartRequest객체 타입의 getParameter()메소드를 작성
	//String filename = multi.getFilesystemName(name);
	out.println(name + " = " + value + "<br>");//파라미터 값을 출력하도록 println작성
}//출력이 다 끝나고
out.println("<hr>");
		
/*String title = multi.getParameter("title");
out.println("<h3>" + title + "</h3>");*/

Enumeration files = multi.getFileNames();
//전송된 요청 파라미터중 파일을 전달받도록 MultipartRequest객체 타입의 getFileNames()메소드를 작성합니다

//add
while (files.hasMoreElements()){
	//전송된 요청파라미터중 파일이 없을때까지 반복하도록 hasMoreElements()메소드 작성
	String name = (String) files.nextElement();
	//전송된 요청파라미터중 파일을 가져오도록 nextElement()메소드를 작성
	String filename = multi.getFilesystemName(name);
	//서버에 업로드된 파일을 가져오도록 getFilesystemName(name)
	String original = multi.getOriginalFileName(name);
	//서버에 업로드된 파일에 서버에 저장되기전에 파일이름 가져오도록 getOriginalFileName(name)
	String type = multi.getContentType(name);//콘텐츠유형을 가져오기 위해
	File file = multi.getFile(name);//폼페이지에 전송된 파일을 가져오도록 getFile(name)
	
	out.println("요청 파라미터 이름 :" + name + "<br>");
	out.println("실제 파일 이름 :" + original + "<br>");
	out.println("저장 파일 이름 :" + filename + "<br>");
	out.println("파일 콘텐츠 유형 :" + type + "<br>");
	
	if(file!=null){
		out.println(" 파일크기: " + file.length());
		out.println("<br>");
	}
	
}
/*out.println("실제 파일 이름: " + original + "<br>");
out.println("저장 파일 이름: " + filename + "<br>");*/

%>