<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그</title>
</head>
<body>
<h1>스크립트 태그의 개요</h1>
<p>Page Count is</p>
<% out.println(++count3); %>
<%! int count3=0; %>
<pre>
- 스크립트태그 : HTML코드에 자바코드를 넣어서 프로그램이 수행하는 기능을 구현합니다
선언문(declaration) :<%-- <%! %> --%>자바 변수나 메소드를 정의하는데 사용한다
- 변수나 메소드 등을 선언하는 태그 
(선언된 변수와 메소드는 서블릿 프로그램으로 변역이 될때 메소드 외부에 배치 되므로 jsp페이지 임의의 위치에 선언할수 있다
심지어 스크립틀릿 태그보다 나중에 선언해도 스크립틀릿 태그에서 사용할수 있습니다
)

스크립 틀릿 (scripttlet):<%-- <%! %> --%>자바 로직코드를 작성하는데 사용합니다
스크립 틀릿 태그는 가장 일반적으로 사용되고 변수또는 메소드 호출
유효식 등 다수를 포함할수 있습니다
모든 텍스트, HTML태그, 또는 JSP 요소는 스크립틀릿 태그 외부에 있어야 합니다
- 선언문 태그와 스크립틀릿 태그 비교 -
선언문 : 변수뿐만 아니라 메소드
서블릿 프로그램으로 변환될때 _jspService()메소드 외부에 배치된다

스크립틀릿 : 메소드 없이 변수만 선언할수 있다
서블릿 프로그램으로 변환될때 _jspService()메소드 내부에 배치된다 


표현문(expression) :<%-- <%= %> --%>변수,계산식,메소드 호출결과를 문자열 형태로 출력하는데 사용합니다
표현문 태그를 이용하여 선언문태그 또는 스크립틀릿에서 선언된 변수나 메소드의 
반환값을 외부로 출력합니다
표현문 태그는 스크릿틀릿 태그에서 사용할수 없으므로
이경우에는 out.print()메소드를 사용해야 합니다

- 디렉티브태그 : jsp페이지에 대한 정보를 jsp컨테이너로 보내주는 역활을 합니다
- 액션태그
</pre>
<%! int count =3;//선언문
String makeItLower(String data){
	return data.toLowerCase();
}
%>
<% //스크립 틀릿
for (int i=1; i<= count; i++){
	out.println("jsp는 java server page 입니다 " + i + "<br>");
}
%>
<%= makeItLower("Hello World") %>
<pre>
jsp가 웹브라우저를 통해 요청되면 톰켓(was) 이 jsp페이지를 
서블릿 프로그램으로 번역하고
컴파일 (기계어로 번역)한 서블릿클래스를 실행해서 웹브라우저에 보여줍니다
</pre>
<%! 
int count2 = 2;//자바변수는 한번 선언하면 다시 선언할수 없다

String makeItUpper(String str){
	return str.toUpperCase();//대문자로 만들어줌
} %><!-- 선언문 -->
<% 
for(int i=0; i <= count2; i++){
	out.println("출력 " + i + "<br>");
}
%><!-- 스트립틀릿 -->
<%= makeItUpper("hello world") %><!-- 표현문 -->
<h1>전역변수 사용하기</h1>
<%! int data2 = 50; %><!-- 변수 데이터에 50을 저장하도록 선언문 태그를 작성 -->
<%
out.println("Value of the variable is:" + data2);
//값을 출력하도록 스크립틀릿태그를 작성
%>
<%! int sum(int a, int b) {
	return a +b;
} %>
<% out.println("\n 2 + 3=" + sum(2, 3)); %>
<h1>스크립틀릿 태그에 지역변수 사용하기</h1>
<%
int a =2; int b=3; int plus = a +b;
out.println("a + b = " + plus);
%>
<%
for (int q=0; q <= 10; q++){
	if (q % 2==0){
		out.println(q + "<br>");
	}
}
%>
<h1>표현식</h1>
<p>Today's date : <%=new java.util.Date() %></p>
<%
int q = 10;
int w = 20; 
int e = 30;
%>
<%= q + w + e %>
</body>
</html>