<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="*/../resources/css/CSS.css" type="text/css" /> 
<style type="text/css">
	label{
		width : 170px;
		float: left;
	}
</style>
</head>
<body>
<%@ include file="include/header.jsp"%>
<section>
	<form action="insert" method="post">
		<label>프로젝트 이름</label><input type="text" name="name"><br><br>
		<label>프로젝트 내용</label><textarea rows="10" cols="95" name="context"></textarea><br><br>
		<label>시작 날짜</label><input type="date" name="startDate"><br><br>
		<label>마감 날짜</label><input type="date" name="endDate"><br><br>
		<label>상태</label>
		<select name="state">
			<option selected="selected">준비</option>
			<option>진행중</option>
			<option>종료</option>
			<option>보류</option>
		</select><br><br>
		<input type="submit" value="저장">
		<input type="reset" value="취소">
	</form>
</section>
<%@ include file="include/footer.jsp"%>
</body>
</html>