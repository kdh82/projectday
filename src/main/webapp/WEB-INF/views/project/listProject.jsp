<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="include/header.jsp"/>
<div id="topdiv">
<ul id="topdivul">
	<li><a href="listAll">[Home]</a></li>
	<li><a href="register">[새 프로젝트 등록]</a></li>
</ul>
</div>
<div id="maindiv">
	<table border="1">
		<tr>
			<th>프로젝트 이름</th>
			<th>시작날짜</th>
			<th>종료날짜</th>
			<th>상태</th>
		</tr>
		<c:forEach var="item" items="${list }">
		<tr>
			<td	id="listtd"><a href="read?no=${item.no }" title="프로젝트 상세 보기">${item.name }</a></td>
			<td><fmt:formatDate value="${item.getdate }" pattern="yyyy-MM-dd"/></td>
			<td><fmt:formatDate  value="${item.enddate }" pattern="yyyy-MM-dd"/></td>
			<td>${item.order }</td>
		</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="include/footer.jsp"/>
</body>
</html>