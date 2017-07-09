<%@page import="com.dgit.domain.Projectday"%>
<%@page import="java.text.SimpleDateFormat"%>
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
<style>
label{
	display: inline-block;
	width: 150px;
}
.updatebtn{
width: 50px;
margin-left: 20px;
}
.updatebtn::FIRST-CHILD {
	margin-left: 100px;
}
</style>
</head>
<body>
<jsp:include page="include/header.jsp"/>
<div id="topdiv">
<ul id="topdivul">
	<li><a href="listAll">[Home]</a></li>
</ul>
</div>
<div id="maindiv">
	<form action="modify?no=${pd.no }" method="post" name="f1">
		<input type="hidden" name="no">
		<p>
			<label>프로젝트 이름: </label>
			<input type="text" name="name" value="${pd.name }">
		</p>
		<br>
		<p>
			<label>프로젝트 내용: </label>
			<textarea rows="15" cols="70" name="content">${pd.content }</textarea>
		</p>
		<br>
		<p>
			<label>시작날짜: </label>
			<input type="date" name="getdate" value=<fmt:formatDate value="${pd.getdate}" pattern="yyyy-MM-dd"/>>
		</p>
		<br>
		<p>
			<label>마감날짜: </label>
			<input type="date" name="enddate" value=<fmt:formatDate value="${pd.enddate}" pattern="yyyy-MM-dd"/>>
		</p>
		<br>
		<p>
			<label>상태: </label>
			<select name="order">		
			<option <c:if test="${pd.order == '준비' }"> selected="selected"</c:if>>준비</option>				
			<option <c:if test="${pd.order == '진행중' }"> selected="selected"</c:if>>진행중</option>			
			<option <c:if test="${pd.order == '종료' }"> selected="selected"</c:if>>종료</option>						
			<option <c:if test="${pd.order == '보류' }"> selected="selected"</c:if>>보류</option>		
			</select>
		</p>
		<br>
		<input type="submit" value="수정" class="updatebtn"><input type="reset" value="취소" onclick="history.back()" class="updatebtn"><br>
	</form>
	</div>
	<jsp:include page="include/footer.jsp"/>
</body>
</html>