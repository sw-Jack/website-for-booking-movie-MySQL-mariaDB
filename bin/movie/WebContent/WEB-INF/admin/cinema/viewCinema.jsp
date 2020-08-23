<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp"%>
<div align="center">
<form name="f" action="insertCinema.mo" method="post">
<h2>${viewCinema.cinema_addr}�� ��ȭ��</h2>
<div class="container">
<table class="table">
	<tr class="active" align="center">
		<th>������</th><td>${viewCinema.cinema_addr}��</td>
	</tr>
	<tr class="active" align="center">
		<th>�󿵰� ��</th><td>�� ${viewCinema.cinema_size}��</td>
	</tr>
	<tr class="active" align="center">
		<th>�����</th><td>${viewCinema.cinema_admin}</td>
	</tr>
	<c:forEach var="thdto" items="${viewTheater}">
	<tr>
	<div class="container">
	<table class="table">
	<tr class="active" align="center">
		<th colspan="2">${thdto.theater_stage}��</th>
	</tr>
	<tr class="active" align="center">
		<th>�����ο�</th><td>${thdto.theater_seatcount}</td>
	</tr>
	<tr class="active" align="center">
		<th>�󿵿�ȭ����</th><td>${thdto.theater_grade}</td>
	</tr>
	</table>
	</div>
	</tr>
	</c:forEach>
</table>
</div>
</form>
</div>
<%@ include file="/bottom.jsp"%>