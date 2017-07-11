<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<form action="modify" method="post">
	<input type="hidden" name="project_id" value=${projectEx.project_id }> 
		<label>프로젝트 이름</label><input type="text" name="name" value="${projectEx.name }"><br><br>
		<label>프로젝트 내용</label><textarea rows="10" cols="95" name="context" >${projectEx.context }</textarea><br><br>
		<label>시작 날짜</label><input type="date" name="startDate" value=<fmt:formatDate value="${projectEx.startDate}" pattern="yyyy-MM-dd"/>><br><br>
		<label>마감 날짜</label><input type="date" name="endDate"  value=<fmt:formatDate value="${projectEx.endDate}" pattern="yyyy-MM-dd"/>><br><br>
		<label>상태</label>
		   <select name="state">
                  <option <c:if test="${projectEx.state eq '준비' }">selected</c:if>>준비</option>
                  <option  <c:if test="${projectEx.state eq '진행중' }">selected</c:if>>진행중</option>
                  <option  <c:if test="${projectEx.state eq '종료' }">selected</c:if>>종료</option>
                  <option  <c:if test="${projectEx.state eq '보류' }">selected</c:if>>보류</option>
                </select><br><br>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
</section>
<%@ include file="include/footer.jsp"%>
</body>
</html>