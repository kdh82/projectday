<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<script src="/../resources/js/common.js"></script>
<script>
$(function(){
	$("form[name='f1']").submit(function(){
		
		$(".error").css("display","none");
		
		if(checkInputEmpty($("input[name]"))==false){
			return false;
		}

/*  	$("#join").click(function(){
		location.href = "list.do";
	})  */
	})
});
</script>
<style>
label{
	display: inline-block;
	width: 150px;
}
.insertbtn{
width: 50px;
margin-left: 20px;
}
.insertbtn::FIRST-CHILD {
	margin-left: 100px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#homea").click(function(){
		location.href="listAll";
	});
})	;
</script>
</head>
<body>
<jsp:include page="include/header.jsp"/>
<div id="topdiv">
<ul id="topdivul">
	<li><a href="#" id="homea">[Home]</a></li>
</ul>
</div>
<div id="maindiv">
	<form role="form" action="register" method="post" name="f1">
		<!-- <input type="hidden" name="no"> -->
		<p>
			<label>프로젝트 이름: </label>
			<input type="text" name="name">
			<span class="error">프로젝트 이름을 입력하시오</span>
		</p>
		<br>
		<p>
			<label>프로젝트 내용: </label>
			<textarea rows="15" cols="70" name="content"></textarea>
			<span class="error">프로젝트 내용</span>
		</p>
		<br>
		<p>
			<label>시작날짜: </label>
			<input type="date" name="getdate">
			<span class="error">시작날짜</span>
		</p>
		<br>
		<p>
			<label>마감날짜: </label>
			<input type="date" name="enddate">
			<span class="error">마감날짜</span>
		</p>
		<br>
		<p>
			<label>상태: </label>
			<select name="order">
			<option selected="selected">준비</option>
			<option>진행중</option>
			<option>종료</option>
			<option>보류</option>
			</select>
		</p>
		<br>
		<input type="submit" value="저장"  id="join" class="insertbtn">
		<input type="reset" value="취소" onclick="history.back()" class="insertbtn"><br>
	</form>
	</div>
	<jsp:include page="include/footer.jsp"/>
</body>
</html>