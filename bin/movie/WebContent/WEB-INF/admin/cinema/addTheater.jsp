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
	<h2>�󿵰� �߰�</h2>

	<form name="f" action="addTheater.mo" method="post">
	<input type="hidden" name="cinema_num" value="${getCinema.cinema_num}"/>
	<input type="hidden" name="cinema_addr" value="${getCinema.cinema_addr}"/>
		<table class="table">
			<tr class="active" align="center">
				<th>���̸�(���ڸ��Է�)</th>
				<td><input type="text" name="theater_stage" size="80" /></td>
			</tr>
			<tr class="active" align="center">
				<th>���</th>
				<td>
				<select name="theater_grade">
					<option value="2D">2D</option>
					<option value="3D">3D</option>
					<option value="imax">IMAX</option>
				</select>
				</td>
			</tr>
			<tr class="active" align="center">
				<th>�¼���</th>
				<td><input type="text" name="theater_seatcount" size="80" /></td>
			</tr>
			<tr class="active" align="right">
				<td colspan="2"><input type="submit" value="�Ϸ�" /></td>
			</tr>
		</table>
	</form>


</div>
</div>
<%@ include file="/bottom.jsp"%>