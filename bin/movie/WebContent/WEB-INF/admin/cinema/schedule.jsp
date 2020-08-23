<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width",initial-scale="1">
	<title>SGV ��ȭ �� �ð�ǥ</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/codingBooster.css">
</head>
<body>
	<div class="container">
		<table class="table">
		<thead>
			<h4>${play_year}�� ${play_month}�� ${play_day}�� �ð�ǥ</h4>
		</thead>
		<tbody>
		<tr>
			<th>���۽ð�</th><th>����ð�</th><th>��ȭ����</th>
		</tr>
		<c:forEach var="dto" items="${playlist}">
			<tr>
			<td>${dto.start_time_hour}�� ${dto.start_time_min}��</td>
			<td>${dto.end_time_hour}�� ${dto.end_time_min}��</td>
			<td>${dto.movie_name}
			</tr>
		</c:forEach>
		</tbody>
		</table>
	</div>
</body>
</html>