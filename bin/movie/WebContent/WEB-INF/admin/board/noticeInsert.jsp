<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/top.jsp" %>
<div class="container">
<form name="f" action="noticeinsert.mo" method="post">
	<table class="table">
	<thead>
		<h4>�������� ����</h4>
	</thead>
	<tbody>
		<tr>
			<th>�� ����</th><td><input type="text" name="title" size="50"></td>
		</tr>
		<tr>
			<th>�� ����</th><td><textarea rows="10" cols="50" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="�� ����"><input type="reset" value="�ٽ��ۼ�"></td>
		</tr>
	</tbody>
	</table>
</form>
</div>
<%@ include file="/bottom.jsp"%>