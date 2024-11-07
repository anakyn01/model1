<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>welcome</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>액션 태그</h1>
<pre>
- 서버나 클라이언트에게 어떤 행동을 하도록 명령하는 태그
- 자바빈즈(javaBeans)등의 다양한 기능을 제공합니다
</pre>
<table class="table table-bordered table-dark">
<thead>
<tr>
<th>액션태그</th>
<th>형식</th>
<th>설명</th>
</tr>
</thead>
<tbody>
<tr>
<td>forward</td>
<td>:forward...</td>
<td>
다른 페이지로 이동과 같은 페이지의 흐름을 제어한다
</td>
</tr>
<tr>
<td>include</td>
<td>:include...</td>
<td>외부 페이지에 내용을 포함하거나 페이지를 모듈화 한다</td>
</tr>
<tr>
<td>param</td>
<td>:param</td>
<td>태그에 인자를 추가한다(단독으로 사용되지 않으며 forward, include내부에 사용된다)</td>
</tr>
<tr>
<td>useBean</td>
<td>:useBean</td>
<td>jsp페이지에 자바빈즈를 설정한다</td>
</tr>
<tr>
<td>
setProperty
</td>
<td>
:setProperty..
</td>
<td>
자바빈즈의 프로퍼티 값을 설정한다
</td>
</tr>
<tr>
<td>getProperty</td>
<td>
:getProperty...
</td>
<td>
자바빈즈의 프로퍼티 값을 얻어온다
</td>
</tr>
<tr>
<td>plugin</td>
<td>:plugin</td>
<td>BOM : 웹브라우저에서 자바애플릿을 실행</td>
</tr>
<tr>
<td>element</td>
<td>:element</td>
<td>동적 xml요소를 설정한다</td>
</tr>
<tr>
<td>attribute</td>
<td>:attribute</td>
<td>동적으로 정의된 XML요소의 속성을 설정한다</td>
</tr>
<tr>
<td>body</td>
<td>:body</td>
<td>동적으로 정의된 XML요소의 몸체를 설정한다</td>
</tr>
<tr>
<td>text</td>
<td>:text</td>
<td>jsp페이지 및 문서에서 템플릿 텍스트 작성</td>
</tr>
</tbody>
<tfoot>
<tr>
<th>액션태그</th>
<th>형식</th>
<th>설명</th>
</tr>
</tfoot>
</table>
</div>
</div>
</div>
</body>
</html>