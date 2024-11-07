<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>security</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<pre>
선언적 시큐리티(declarative security)
웹 애플리케이션 배포 설명자 web.xml 파일에 보안구성을 작성하여 수행하는 방식
보안을 달성하기 위해 별도의 코드를 작성할 필요업시 web.xml보안구성을 작성함
사용자가 웹페이지에 접근할수 있게 합니다
- 보안역활
- 보안제약 사항
- 인증 처리 

<security-role>
<role-name>역활 이름</role-name>
</security-role>
시큐리티 제약사항 설정
<security-constrain>
<auth-constrain>
<description>관리자</description>
<role-name>manager</role-name>
</auth-constrain>

<web-resource-collection>웹자원에 대한 접근을 설정한다</web-resource-collection>
<auth-constraint>웹 자원에 접근할수 있는 인증된 사용자를 설정한다</auth-constraint>
<user-data-constraint>데이터 전송 시 데이터 보호를 설정</user-data-constraint>
<user-data-constraint>
<transport-guarantee>
NONE[기본값으로 데이터를 보호하지 않겠다는 의미이다]/INTEGRAL[전송중 데이터가 변경되지 않았음을 보장한다는 의미]
/CONFIDENTIAL[전송중 데이터를 아무도 훔쳐보지 않았음을 보장한다는 의미이다(기밀성)]
</transport-guarantee>
</user-data-constraint>
</security-constrain>
웹리소스 컬렉션 요소 : 자원이름,접근제한,전송방식
<web-resource-collection>
<web-resource-name>자원 이름</web-resource-name>
<url-pattern>접근 제한 URL</url-pattern>
<http-method>전송 방식(GET/POST)</http-method>
</web-resource-collection>

시큐리티 인증설정하기 : 인증처리를 위한 로그인 페이지나 오류페이지를 호출하는데 사용합니다
<login-config>
<auth-method>BASIC[간단하고 일반적인 방법]|DIGEST[암호화 매커니즘]|FORM[일반적인 폼페이지를 이용하여 로그인 정보를 서버에 전송하는 방식]|CLIENT-CERT[클라이언트가 인증서를 가지고 공인키 인증방식을 사용하여 로그인 하는 방식이다 비즈니스 환경에서만 사용된다]</auth-method>
웹자원에 대한 인증처리 방식을 설정한다
<realm-name></realm-name>웹 자원에 접근할수 있는 인증된 사용자를 설정한다
<form-login-config>login.jsp
</form-login-config>데이터 전송시 데이터 보호를 설정한다(인증을 위한 로그인 페이지 설정)
<form-error-page>error.jsp
인증 실패시에 표시할 오류페이지를 설정한다
</form-error-page>
</login-config>








</pre>
</div>
</div>
</div>
</body>
</html>