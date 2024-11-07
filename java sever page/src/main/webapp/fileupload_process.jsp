<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
import="org.apache.commons.fileupload.*, java.io.*, java.util.*"
%>
<%
String fileUploadPath="C:\\dev_hwang\\4_workspace\\java sever page\\src\\main\\webapp\\upload";
DiskFileUpload upload = new DiskFileUpload();
//생성된 객체를 통해 DiskFileUpload클래스가 제공하는 메소드를 사용하여 웹브라우저가 전송한 multipart/form-data유형의 요청파라미터를 가지고 온다
List items = upload.parseRequest(request);
Iterator params = items.iterator();

while (params.hasNext()){// 누구 누구가 null같지 않다면
/*
hasNext() => boolean (True, false)
next() => "매개변수 혹은 iterator되는 타입" 아무 타입으로나 변환할수 있음
*/
FileItem item = (FileItem)params.next();
if(item.isFormField()){//fileitem오브젝트에 저장되어 있는 값이 파일데이터인지 그외의 form데이터인지 판단을 한다
	String title=item.getString("utf-8");//기본문자인코딩을 사용하여 요청파라미터의 값을 얻어온다
	out.println("<h3>"+title+"</h3>");
}else{
	String fileName = item.getName();//올린파일이름
	fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
	//lastIndexOf(\\)가 있는 마지막 위치를 찾은뒤에 filename확장자를 찾는다
	File file = new File(fileUploadPath + "/"+fileName);
	//파일객체 저장경로/파일명.확장자 나중에 뷰페이지에서 보여질 경로를 얻는다
	item.write(file);
	out.println("파일 이름: "+fileName +"<br>");
}
	
}
%>