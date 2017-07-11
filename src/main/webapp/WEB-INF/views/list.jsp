<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="*/../resources/css/CSS.css" type="text/css" /> 
<style type="text/css">
	#p1{
		text-align: right;
	}
	#p1 a{
		color:blue;
	}
	table{
		width: 900px;
	}
	table tr td{
		height: 50px;
		text-align: center;
	}
</style>
</head>
<body>
	<%@ include file="include/header.jsp"%>
	<section>
		<p id="p1"><a href="insert">새 프로젝트 추가</a></p>
		<table>
			<tr>
				<th>프로젝트 이름</th>
				<th>시작 날짜</th>
				<th>종료 날짜</th>
				<th>상태</th>
			</tr>
			<c:forEach var="projectEx" items="${list }">
				<tr>
					<td><a href="read?project_id=${projectEx.project_id }">${projectEx.name }</a></td>
					<td><fmt:formatDate value="${projectEx.startDate }" pattern="yyyy-MM-dd"/></td>
					<td><fmt:formatDate value="${projectEx.endDate }" pattern="yyyy-MM-dd"/></td>
					<td>${projectEx.state }</td>
				</tr>
			</c:forEach>
			
		</table>
	</section>
	<%@ include file="include/footer.jsp"%>
</body>
</html>