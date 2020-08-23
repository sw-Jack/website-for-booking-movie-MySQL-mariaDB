<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp" %>
<div align="center">
<table class="table">
<tr>
	<th>��ȭ����ȣ</th><th>��ȭ���ּ�</th><th>�󿵰���</th><th>������</th><th>���� / ����</th>
</tr>
<c:choose>
<c:when test="${empty listCinema}">
<tr>
	<th colspan="5">��ϵ� ��ȭ���� �����ϴ�.</th>
</tr>
</c:when>
<c:otherwise>
<c:forEach var="dto" items="${listCinema}">
<tr>
	<td>${dto.cinema_num}</td>
	<td><a href="viewCinema.mo?cinema_num=${dto.cinema_num}">${dto.cinema_addr}��</a></td>
	<td>${dto.cinema_size}</td>
	<td>${dto.cinema_admin}</td>
	<td><a href="updateCinema.mo?cinema_num=${dto.cinema_num}">����</a> /
		<a href="deleteCinema.mo?cinema_num=${dto.cinema_num}">����</a>
	</td>
</tr>
</c:forEach>	
</c:otherwise>
</c:choose>
</table>
</div>
<%@ include file="/bottom.jsp" %>