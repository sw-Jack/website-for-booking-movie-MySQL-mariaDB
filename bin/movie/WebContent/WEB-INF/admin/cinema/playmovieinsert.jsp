<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp" %>
<div class="container">
<table class="table">
<tr>
<td>
	<table class="table">
		<tr>
		<td>
		<div><h4 style="text-align: center;">��ȭ�� ����</h4></div>
		</td>
		</tr>
		<tr>
		<td colspan="2">
		<c:choose>
			<c:when test="${empty cinemaList}">
				<div><h4>��ϵ� ��ȭ���� �����ϴ�.</h4></div>
			</c:when>
			<c:otherwise>
			<c:forEach var="dto" items="${cinemaList}">
				<div class="list-group">
					<a href="selectTheater.mo?cinema_num=${dto.cinema_num}" class="list-group-item">${dto.cinema_addr}</a>
				</div>
			</c:forEach>
			</c:otherwise>
		</c:choose>
		</td>
		</tr>
	</table>
</td>
<!-- ��ȭ������ -->

<td>	
	<table class="table">
		<tr>
		<c:choose>
		<c:when test="${empty theaterList}">
		<td>
			<h4>��ȭ���� �������������˰ų�, ��ϵ� �󿵰��̾����ϴ�.</h4>
		</td>
		</c:when>
		<c:otherwise>
		<div class="con-sm-2"><h4 style="text-align: center;">�󿵰� ����</h4>
		<c:forEach var="tdto" items="${theaterList}">
			<div class="list-group">
				 		<a href="selectMovie.mo?theater_stage=${tdto.theater_stage}&cinema_num=${tdto.cinema_num}" class="list-group-item">${tdto.theater_stage}��</a>
			</div>
		</c:forEach>
		</div>
		</c:otherwise>
		</c:choose>
		</tr>
	</table>
</td>

<!-- �󿵰����� -->
</tr>
</table>
</div>
<%@ include file="/bottom.jsp" %>