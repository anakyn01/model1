<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 자바유틸을 페이지 디렉티브로 부를경우 -->
<%@ page import="java.util.Date"%>
<%@ include file="../include/header.jsp" %>

<h1>jsp page디렉티브</h1>
<pre>
- jsp페이지에 대한 정보를 입력하기 위해 사용됩니다
- 어떤 문서를 생성하는지 어떤 자바클래스를 사용하는지
세션에 참여하는지 등
</pre>
<h1>page 디렉티브의 주요 속성</h1>
<table class="table">
<thead>
<tr>
<th>속성</th>
<th>설명</th>
<th>기본값</th>
</tr>
</thead>
<tbody>
<tr>
<td>contentType</td>
<td>jsp가 생성할 문서의 MIME타입과 캐릭터 인코딩을 지정합니다</td>
<td>text/html</td>
</tr>
<tr>
<td>import</td>
<td>jsp페이지에서 사용할 자바 클래스를 지정합니다</td>
<td></td>
</tr>
<tr>
<td>session</td>
<td>jsp페이지가 세션을 사용할지 여부를 지정한다
false일 경우 세션을 사용하지 않는다(세션이 적용되지 않음)
</td>
<td>true</td>
</tr>
<tr>
<td>buffer</td>
<td>jsp페이지의 출력 버퍼크기를 지정합니다
8kb일경우 8kb의 출력버퍼를 사용합니다
</td>
<td>최소 8kb</td>
</tr>
<tr>
<td>autoFlush</td>
<td>출력 버퍼가 가 찾을경우 자동으로 버퍼내용을 출력 스트림에 
보내고 비울지 여부를 지정한다
false을 경우 에러를 발생시킨다
</td>
<td>true</td>
</tr>
<tr>
<td>info</td>
<td>jsp페이지에 대한 설명을 입력한다</td>
<td></td>
</tr>
<tr>
<td>errorPage</td>
<td>사용자가 만든 에러페이지를  지정할때 사용한다
(따로 설정하지 않아도 기본적으로 404,500에러 디폴트로 설정되어 있음)
</td>
<td></td>
</tr>
<tr>
<td>pageEncoding</td>
<td>jsp코드의 캐릭터 인코딩을 지정합니다</td>
<td></td>
</tr>
</tbody>
</table>




<!--subpage-->
<%@ include file="../include/footer.jsp" %>
