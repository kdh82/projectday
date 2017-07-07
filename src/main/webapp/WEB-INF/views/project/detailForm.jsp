<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(function(){
	$("#del").click(function(e){
		e.preventDefault();
		var result = confirm("정말 삭제하시겠습니까?");
		var number = ${proList.no};
		if(result == true){
			location.href = "delete.do?no=" + number;	
		}
	});
});
</script>
<style>
tr td:FIRST-CHILD {
	width: 200px;
}
tr td:LAST-CHILD {
	width: 700px;
	text-align: left;
	padding-left: 10px;
}
#detailformul{
	text-align: center;
}
#detailformul li{
	display: inline;
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
	<table border="1">
		<tr>
			<th>프로젝트 이름</th>
			<td>${projectday.name }</td>
		</tr>
		<tr>
			<th>프로젝트 내용</th>
			<td>${projectday.content }</td>
		</tr>	
		<tr>
			<th>시작날짜</th>
			<td><fmt:formatDate value="${projectday.getdate }"/></td>
		</tr>
		<tr>	
			<th>종료날짜</th>
			<td><fmt:formatDate value="${projectday.enddate }"/></td>
		</tr>
		<tr>	
			<th>상태</th>
			<td>${projectday.order }</td>
		</tr>
	</table>
	<ul id="detailformul">
	<li><a href="modify?no=${projectday.no }">[수정]</a></li>
	<li><a href="delete?no=${projectday.no }" id="del">[삭제]</a></li>
	<li><a href="listAll">[돌아가기]</a></li>
	</ul>
</div>
<jsp:include page="include/footer.jsp"/>	
</body>
</html>