<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ include file="/top.jsp"%>

<link rel="stylesheet" type="text/css" href="../style.css">
<div class="container">
	<div align="center">
		<b>���� ����</b>
		<table border="1" width="500" class="table">

			<tr>
				<th bgcolor="white" width="20%">�۹�ȣ</th>
				<td align="center" width="30%" colspan="3">${getQuestion.question_num}</td>
			</tr>
			<tr>
				<th bgcolor="white" width="20%">�ۼ���</th>
				<td align="center" width="30%">${getQuestion.name}</td>
				<th bgcolor="white" width="20%">�ۼ���</th>
				<td align="center" width="30%">${getQuestion.writedate}</td>
			</tr>
			<tr>
				<th bgcolor="white" width="20%">������</th>
				<td align="center" width="80%" colspan="3">${getQuestion.title}</td>
			</tr>
			<tr>
				<th bgcolor="white" width="20%">�۳���</th>
				<td align="center" width="80%" colspan="3">${getQuestion.content}</td>
			</tr>
			<tr bgcolor="white">
				<td align="right" colspan="4"><input type="button" value="�亯�ޱ�"
					onclick="window.location='question_answer.mo?question_num=${getQuestion.question_num}&re_group=${getQuestion.re_group}&re_step=${getQuestion.re_step}&re_level=${getQuestion.re_level}'">
					<input type="button" value="�ۻ���"
					onclick="window.location='question_delete.mo?question_num=${getQuestion.question_num}'">
					<input type="button" value="�۸��"
					onclick="window.location='question_list.mo'"></td>
			</tr>

		</table>
	</div>
</div>
<%@ include file="/bottom.jsp"%>















