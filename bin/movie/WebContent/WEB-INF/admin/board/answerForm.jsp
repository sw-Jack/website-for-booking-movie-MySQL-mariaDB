<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp"%>
<link rel="stylesheet" type="text/css" href="../style.css">
<script type="text/javascript">
	function checkBoard() {
		if (f.writer.value == "") {
			alert("�̸��� �Է��ϼ���")
			f.writer.focus()
			return false;
		}
		if (f.subject.value == "") {
			alert("������ �Է��ϼ���")
			f.subject.focus()
			return false;
		}
		if (f.content.value == "") {
			alert("������ �Է��ϼ���")
			f.content.focus()
			return false;
		}
		if (f.passwd.value == "") {
			alert("��й�ȣ�� �Է��ϼ���")
			f.passwd.focus()
			return false;
		}
		return true;
	}
</script>
<div class="container">
	<div align="center">
		<form name="f" action="question_answer.mo" method="post"
			onsubmit="return checkBoard()">

			<input type="hidden" name="question_num" value="${question_num}"> 
			<input type="hidden" name="re_group" value="${re_group}"> 
			<input type="hidden" name="re_step" value="${re_step}">
			<input type="hidden" name="re_level" value="${re_level}">

			<table border="1" class="table"> 
				<tr bgcolor="white" align="center">
					<th colspan="2">�亯�ޱ�</th>
				</tr>
				<tr>
				<tr>
					<td width="20%" bgcolor="white" size="50" class="box">�ۼ���</td>
					<td><input type="text" name="name" class="box" value="���"
						readOnly></td>
				</tr>
				<tr>
					<th width="20%" bgcolor="white">����</th>
					<td><input type="text" name="title" size="50" class="box"></td>
				</tr>
				<tr>
					<th width="20%" bgcolor="white">����</th>
					<td><textarea name="content" rows="10" cols="50"></textarea></td>
				</tr>
				</tr>
				<tr bgcolor="white">
					<td colspan="2" align="center"><input type="submit"
						value="�۾���"> <input type="button" value="�ٽ��ۼ�"
						onclick="window.location='question_answer.mo'"> <input
						type="button" value="��Ϻ���"
						onclick="window.location='question_list.mo'">
			</table>

		</form>
	</div>
</div>
<%@ include file="/bottom.jsp"%>
