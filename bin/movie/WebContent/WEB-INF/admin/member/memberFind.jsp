<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp" %>    
<html>
<head>
  <title>Movie Member</title>
</head>
<body>

<div align="center">
	<hr color="green" width="300">

	
	<h2>ȸ�� ã��</h2>
	
	<form name="f" method="post" action="memberFind.mo">
		<select name="search">
			<option value="id"> ���̵� </option>
			<option value="name"> �̸� </option>
		</select>
		<input type= "text" name="searchString"/>
		<input type= "submit" value="ã��"/>
 	</form>
 	<c:if test="${empty find}">
 	<hr width="300">
 	<table width="700" class="outline">
 		<tr>
 			<th class="m3">��ȣ</th>
 			<th class="m3">���̵�</th>
 			<th class="m3">�̸�</th>
			<th class="m3">�̸���</th>
			<th class="m3">�������</th>
			<th class="m3">��ȭ��ȣ</th>
			<th class="m3">�����ȣ</th>
			<th class="m3">�ּ�</th>
			<th class="m3">����Ʈ</th>
			<th class="m3">����|����</th>
 	</tr>
 <c:choose>
	<c:when test="${empty memberFind}">
		<tr>
 			<td colspan="10"> ã���ô� ȸ���� �����ϴ�. </td>
 		</tr>
	</c:when>
	<c:otherwise>
	<c:forEach var="dto" items="${memberFind}">
 	

	<tr>
		<td>${dto.user_num}</td>
		<td>${dto.id}</td>
		<td>${dto.name} </td>
		<td>${dto.email}</td>
		<td>${dto.allBirth}</td>
		<td>${dto.allHp}</td>
		<td>${dto.adrr_code}</td>
		<td>${dto.adrr}</td>
		<td>${dto.point}</td>
		<td><a href="memberUpdate.mo?user_num=${dto.user_num}">����</a>|
			<a href="memberDelete.mo?user_num=${dto.user_num}">����</a></td>
	</tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
 	</table>
 	</c:if>
	</div>
</body>


</html>
<%@ include file="/bottom.jsp" %>