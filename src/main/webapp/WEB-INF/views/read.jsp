<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="*/../resources/css/CSS.css" type="text/css" />
<style type="text/css">
		table{
		width: 900px;
	}
	table tr td{
		height: 50px;
		text-align: center;
	}
	button{
		width : 200px;
		font-size: 25px;
		margin-left: 30px;
	}
</style> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="include/header.jsp"%>
	<section>
		<table>
			<tr>
				<th>프로젝트 이름</th>
				<td>${projectEx.name}</td>
			</tr>
			<tr>
				<th>프로젝트 내용</th>
				<td>${projectEx.context}</td>
			</tr>
			<tr>
				<th>시작 날짜</th>
				<td><fmt:formatDate value="${projectEx.startDate }" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<th>종료 날짜</th>
				<td><fmt:formatDate value="${projectEx.endDate }" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<th>상태</th>
				<td>${projectEx.state}</td>
			</tr>
		</table>
		<form id="f1"method="post">
			<input type="hidden" name="project_id" value="${projectEx.project_id }">
		</form>
		<br><br>
		<div>
			<button id="modify">수정</button>
			<button id="delete">삭제</button>
			<button id="back">돌아가기</button>
		</div>
	</section>
	<%@ include file="include/footer.jsp"%>
   
   <script type="text/javascript">
	$(function() {
		$("#delete").click(function() {
			$("#f1").attr("action", "delete"); //post 형식의 delete command 호출됨
			$("#f1").submit();
		});
		
		$("#modify").click(function() {
			$("#f1").attr("action", "modify");
			$("#f1").attr("method", "get"); 	// get 형식의 modify command 호출됨
			$("#f1").submit();
		});
		
		$("#back").click(function() {
			//location.href="listPage?page=${cri.page }";
			$("#f1").attr("action", "list");
			$("#f1").attr("method", "get"); 
			$("#f1").submit();
		});
	});
   </script>
</body>
</html>