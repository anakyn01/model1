<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
import="org.apache.commons.fileupload.*, java.io.*, java.util.*"
%>
<%
String path = "C:\\dev_hwang\\4_workspace\\java sever page\\src\\main\\webapp\\upload";//경로설정변수
DiskFileUpload upload= new DiskFileUpload();
upload.setSizeMax(1000000);//파일에 최대크기 설정
upload.setSizeThreshold(4096);//메모리상에 저장할 최대크기를 설정한다
upload.setRepositoryPath(path);//업로드된 파일을 임시로 저장할 디렉토리를 설정한다

List items = upload.parseRequest(request);//item 업로드된 파일 분석
//폼페이지에서 전송된 요청 파라미터 받도록 DiskFileUpload클래스의 parseRequest(request)

Iterator params = items.iterator();//파람 = 아이템 반복
//폼페이지에 전송된 요청파라미터를 Iterator클래스로 변환

while (params.hasNext()){//전송된 요청된 파라미터의 없을때 가져오도록 Iterator객체 타입의 hasNext()메소드를 작성
	//hasNext(boolean[다음에 가져올값이 있으면 true]), next(매개변수 혹은 iterator타입[아무 타입이나 리턴] 다음 요소)
	FileItem item  = (FileItem)params.next(); //item에 각각의 값 요청 파라미터의 이름을 가져오돍
	if(item.isFormField()){//요청파라미터가 파일이 아니라 일반 데이터인 경우 true 를 리턴
		String name = item.getFieldName();
	    String value = item.getString("utf-8");
	    out.println(name + " = " + value + "<br>");//이름 제목 여기서 출력
	}else{
		String fileFieldName = item.getFieldName();
		String fileName=item.getName();
		String contentType = item.getContentType();
		
		fileName = fileName.substring(fileName.lastIndexOf("\\")+1);//파일명
		long fileSize = item.getSize();//파일사이즈
		
		File file = new File(path+"/"+fileName);
		item.write(file);
		
		out.println("<hr>");
		out.println("요청 파라미터 이름" + fileFieldName + "<br>");
		out.println("저장 파일 이름" + fileName + "<br>");
		out.println("저장 콘텐츠 이름" + contentType + "<br>");
		out.println("파일 크기" + fileSize + "<br>");
		
	}
}
%>
<!-- 
DiskFileUpload 클래스의 메소드
- setRepositoryPath(String repositoryPath) => void : 업로드된 파일을 임시로 저장할 디렉토리를 설정한다
- setSizeMax(long sizeMax) => void : 최대 파일크기를 설정한다
- setSizeThreshold(int sizeThreshold) => void : 메모리상에 저장할 최대크기를 설정한다
- parseRequest(httpServletRequest req) => List<FileItem></FileItem> : multipart/form-data유형의 파라미터를 가져온다

FileItem 클래스의 메소드
- isFormField() => boolean : 요청파라미터가 파일이 아니라 일반 데이터인 경우 true 를 리턴
- getFieldName() => string : 요청파라미터의 이름을 얻어온다
- getString() => String : 기본 문자 인코딩을 사용하여 요청 파라미터의 값을 얻어온다
- getString(String encoding) => String : 설정한 문자 인코딩을 사용하여 요청 파라미터의 값을 얻어온다
- getName() => String : 업로드된 파일(경로포함)이름을 얻어온다
- getSize() => long : 업로드된 파일의 크기를 얻어온다
- get() => byte[] : 업로드된 파일을 바이트 배열로 얻어온다
- isInMemory() => boolean : 업로드된 파일이 메모리에 저장된 상태인 경우  true, 
임시 디랙토리에 저장된 경우 false를 리턴
- delete() => void : 파일과 관련된 자원을 삭제한다
- write() => void : 파일과 관련되 자원을 저장한다
- getContentType() => String : 전송하는 콘텐츠유형을 리턴하고 정의되지 않는 경우 null리턴

 -->