<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/top.jsp"%>
<div align="center">
<form name="f" action="insertCinema.mo" method="post">
<h2>��ȭ�� ���</h2>
<div class="container">
<table class="table">
	<tr class="active" align="center">
		<th>������</th><td><input type="text" name="cinema_addr" /></td>
	</tr>
	<tr class="active" align="center">
		<th>�󿵰� ��</th><td><input type="text" name="cinema_size" /></td>
	</tr>
	<tr class="active" align="center">
		<th>�����</th><td><input type="text" name="cinema_admin" /></td>
	</tr>
	<tr class="active" align="right">
		<td colspan="2"><input type="submit" value="����" /></td>
	</tr>
</table>
</div>
</form>
</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="/bottom.jsp"%>