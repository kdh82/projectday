<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
</head>
<body>	
<jsp:include page="include/header.jsp"/>
<div id="topdiv">
<ul id="topdivul">
	<li><a href="listAll">[Home]</a></li>
	<li><a href="regi?no=${item.no }">[새 프로젝트 등록]</a></li>
</ul>
</div>
<div id="maindiv">
	프로젝트 추가 성공
	<a href="list.do">리스트로 돌아가기</a>
</div>
<jsp:include page="include/footer.jsp"/>	
</body>
</html>