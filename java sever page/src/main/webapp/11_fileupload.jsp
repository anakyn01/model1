<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>파일 업로드</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>파일업로드</h1>
<form 
name="fileForm" 
method="post" 
enctype="multipart/form-data" 
action="fileupload01_process.jsp"
>
<div class="input-group my-3">
<label class="form-label">이름 : </label><input type="text" name="name" class="form-control">
</div>
<div class="input-group my-3">
<label class="form-label">제목 : </label><input type="text" name="subject" class="form-control">
</div>
<div class="input-group my-3">
<label class="form-label">파일 : </label><input type="file" name="filename" class="form-control">
</div>
<div class="d-flex justify-content-end">
<input type="submit" value="파일올리기" class="btn btn-outline-success">
</div>
</form>
<pre>
- 웹브라우저에서 서버로 파일을 전송하여 서버에 저장하는것을 말합니다
- 서버에 업로드할수 있는 파일에는 텍스트파일, 바이너리파일, 이미지파일, 문서
- 전송된 파일을 서버에 저장하기위해 
오픈라이브러리(cos.jar, commons-fileupload.jar, common-io.jar)를 이용해야 됩니다
- 파일업로드 처리방법 
MultipartRequest 이용하기 가장 간단한 방법 => cos.jar

아파치 API이용하기 편리하고 강력한 API제공
commons-fileupload.jar, common-io.jar

- 파일업로드를 위해서는 enctype="multipart/form-data" 선언이 되어야 합니다
- 마이그레이션 : 새로운 환경으로 전환하는것
- java Enterprise Edition : 자바를 이용한 서버측 개발 플랫폼
오라클이 자바ee라는 상표권을 가지고 있음 
자카르타 EE로 변경함
javaEE에서는 javax. 자카르타 EE에서는 Jakarta로 변경됨
- jakarta EE
톰켓 9까지는 [JavaEE]가 적용이 되고 와 10 [jakartaEE] 가 적용됨 
은 API 구현체가 완전히 달라졌습니다
- Servlet 서블릿 :
클라이언트의 요청을 처리하고 그결과를 리턴하는 Servlet클래스의 구현 규칙을 지킨 자바 웹프로그래밍 기술
어떠한 요청을 하면 그에 대한 결과를 다시 전송하는 것이 서블릿이다
아이디와 비밀번호를 입력하고 로그인 버튼을 누른다
그때 서버는 클라이언트의 아이디 비밀번호를 확인하고 다음패이지를 띄워준다
이러한 역활을 하는것이 서블릿 입니다
서블릿 특징
- 요청에 대해 동적으로 작동하는 웹어플리케이션 컴포넌트
- html을 사용하여 요청에 응답
- java Thread를 이용하여 동작한다
- Model View Controller (mvc)패턴에서 Controller로 이용된다
- HTTP프로토콜 서비스를 지원하는 javax.servlet.http.HttpServlet클래스를 상속받는다
- HTML변경시 Servlet을 재컴파일 해야 됩니다

서블릿을 5.0으로 설정할 경우 지원하는 EE는 jakartaEE이다
그래서 해당 서블릿버전에서 JAVAEE를 사용하면 서블릿이 정상적으로 동작하지 않아서
404오류가 발생합니다

만약에 jakartaEE를 사용하려면 톰켓에 가서 
tomcat migration tool jakartaEE 다운로드 하여 설치한다

MultipartRequest를 이용한 파일업로드
- 웹페이지에서 서버로 업로드되는 파일 자체만 다루는 클래스 입니다
- 웹브라우저가 전송한 multipart/form-data" 유형과 POST방식의 요청파라미터등을 분석한후
일반 데이터와 파일데이터를 구분하여 파일 데이터에 접근합니다
- 한글 인코딩값을 얻기가 쉽고 서버의 파일저장 폴더에 동일한 파일명이 있으면 파일명을
자동으로 변경합니다
- MultipartRequest클래스는 cos(com.oreilly.servlet)패키지에 포함되어 있는 파일업로드 컴포넌트
오픈라이브러리 cos.jar를 다운로드후에 빌드패스한뒤에 사용합니다
- MultipartRequest클래스 생성
MultipartRequest 클래스에 생성자
생성자의 매개변수 
request : request내장 객체를 설정한다
saveDirectory : 서버파일의 저장경로를 설정
maxPostSize : 파일의 최대 크기(바이트 단위를 설정)설정한다 최대크기를 초과하면
IOException이 발생한다 
encoding : 인코딩 유형 설정한다
policy : 파일명 변경 정책을 의미합니다 
saveDirectory에 파일명이 중복되는 경우 덮어쓰기 여부를 설정하며,
설정하지 않으면 덮어쓴다

MultipartRequest 메소드
getContentType(String name) String => 업로드된 파일의 콘텐츠 유형을 리턴 파일이 없으면 null
getParameter(String name) String => 요청파라미터 이름이 name인 값을 전달받는다
getParameterNames() java.util.Enumeration => 요청파라미터 이름을 Enumeration객체 타입으로 리턴
getFile(String name) java.io.File => 서버에 업로드된 파일에 대한 파일 객체를 리턴한다
업로드된 파일이 없으면 null을 리턴
getfileNames() java.util.Enumeration: 
폼페이지에 input태그 type속성 값이 file로 설정된 요청 파라미터의 이름을 리턴

getFilesystemName(String name) String : 사용자가 설정하여 서버에 실제로 업로드된 파일명을 리턴
파일명이 중복되면 변경된 파일명을 리턴한다

getOriginalFileName(String name) String : 사용자가 업로드한 실제 파일명을 반환한다
파일명이 중복되면 변경전의 파일명을 반환한다

MutipartRequest(javax.sevlet.http.HttpServletRequst request,
java.lang.String saveDirectory,
int maxPostsize,
java.lang.String encoding,
FileRenamePolicy policy)

실 사용예
MultipartRequest multi = new MultipartRequest
(request, "C\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy())
1024 = 1kb,
1024 * 1024 = 1mb
1024 * 1024 * 1024 = 1gb
1024 * 1024 * 1024 * 1024 = 1tb
</pre>

</div>
</div>
</div>
</body>
</html>