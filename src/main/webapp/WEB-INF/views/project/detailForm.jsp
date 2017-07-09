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
/* $(function(){
	$("#del").click(function(e){
		e.preventDefault();
		var result = confirm("정말 삭제하시겠습니까?");
		var number = ${projectday.no};
		if(result == true){
			$.ajax({
				url:"listAll/",
				type:"delete",
				datatype:"json",
				success:function(data){

				}
			})
			
		}
	});
}); */
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
#buttonthey{
	float: right;
	margin-right: 20px;
}
button{
	float: left;
	margin-right: 5px;
	color: white;
	width: 70px;
	height: 20px;
}
button:FIRST-CHILD {
		background-color: blue;
}
button + button{
	background-color: red;
}
button:LAST-CHILD {
	background-color: grey;
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
	<form action="" method="post" id="f1">
		<input type="hidden" name="no" value="${projectday.no }">
	</form>
	<div id="buttonthey">
	<button id="mod">modify</button><button id="del">delete</button><button id="back">back</button>
	</div>
	<%-- <ul id="detailformul">
	<li><a href="modify?no=${projectday.no }">[수정]</a></li>
	<li><a href="delete?no=${projectday.no }" id="del">[삭제]</a></li>
	<li><a href="listAll">[돌아가기]</a></li>
	</ul> --%>
	<script>
		$(function(){
			$("#mod").click(function(e) {
				e.preventDefault();
				$("#f1").attr("action","modify");
				$("#f1").attr("method","get");
				$("#f1").submit();
			})
	$("#del").click(function(e){
		e.preventDefault();
		var result = confirm("정말 삭제하시겠습니까?");
		if(result == true){
				$("#f1").attr("action", "delete");
				$("#f1").submit();
				}
		})
		$("#back").click(function(){
			location.href="listAll";
		})
		})
	</script>
</div>
<jsp:include page="include/footer.jsp"/>	
</body>
</html>