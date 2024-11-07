<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"

%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>commons-FileUpload</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<form action="fileupload_process.jsp" method="post" enctype="multipart/form-data">
<p>파일 : <input type="file" name="filename">
<p><input type="submit" value="파일올리기">
</form>
<h1>commons-FileUpload</h1>
<pre>
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
</pre>

<pre>
- 서버의 메모리상에서 파일 처리가 가능하도록 지원합니다
- Commons-io패키지를 바탕으로 작성 되었습니다
- 오픈 라이브러리 commons-fileupload.jar, commons-io.jar를 받아야 함
</pre>
</div>
</div>
</div>
</body>
</html>