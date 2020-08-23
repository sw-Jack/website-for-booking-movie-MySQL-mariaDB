<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp"%>
<div align="center">
	<table class="table">
		<tr>
			<th>${getCinema.cinema_addr}��</th>
			<th>������ ${getCinema.cinema_admin}</th>
		</tr>
	</table>
	<h4 align="center"> �� �� �� �� �� </h4>
	<table class="table">
		<tr>
			<th align="right"> <a href="addTheater.mo?cinema_num=${getCinema.cinema_num}&cinema_addr=${getCinema.cinema_addr}">�󿵰� �߰�</a></th>
		</tr>
	</table>
	<table class="table">
		<tr>
			<th>�󿵰� �̸�</th>
			<th>�󿵰� ���</th>
			<th>�󿵰� �¼�</th>
			<th>���� / ����</th>
		<c:choose>
			<c:when test="${empty listTheater}">
				<tr>
					<th colspan="4">��ϵ� �󿵰��� �����ϴ�.</th>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="dto" items="${listTheater}">
					<tr>
						<td>${dto.theater_stage}</td>
						<td>${dto.theater_grade}</td>
						<td>${dto.theater_seatcount}</td>
						<td><a
							href="updateTheater.mo?theater_stage=${dto.theater_stage}&cinema_num=${dto.cinema_num}">����</a>
							/ <a href="deleteTheater.mo?theater_stage=${dto.theater_stage}&cinema_num=${dto.cinema_num}">����</a></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
<%@ include file="/bottom.jsp"%>

