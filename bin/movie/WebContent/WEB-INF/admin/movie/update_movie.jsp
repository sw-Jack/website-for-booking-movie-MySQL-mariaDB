<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/top.jsp"%>
<body>
	<script type="text/javascript">
		function checkMovie() {
			if (f.title.value == "") {
				alert("������ �Է����ּ���")
				f.title.focus()
				return false;
			}
			if (f.director.value == "") {
				alert("������ �Է����ּ���")
				f.director.focus()
				return false;
			}
			if (f.genre.value == "") {
				alert("�帣�� �Է����ּ���")
				f.genre.focus()
				return false;
			}
			if (f.actor.value == "") {
				alert("��츦 �Է����ּ���")
				f.actor.focus()
				return false;
			}
			if (f.story.value == "") {
				alert("�ٰŸ��� �Է����ּ���")
				f.story.focus()
				return false;
			}
			if (f.grade.value == "") {
				alert("����� �Է����ּ���")
				f.grade.focus()
				return false;
			}
			if (f.time.value == "") {
				alert("�󿵽ð��� �Է����ּ���")
				f.time.focus()
				return false;
			}
			if (f.opendate_year.value == "") {
				alert("�����⵵�� �������ּ���")
				f.opendate_year.focus()
				return false;
			}
			if (f.opendate_month.value == "") {
				alert("�������� �������ּ���")
				f.opendate_month.focus()
				return false;
			}
			if (f.opendate_day.value == "") {
				alert("�������� �Է����ּ���")
				f.opendate_day.focus()
				return false;
			}
			if (f.trailer.value == "") {
				alert("�������� �Է����ּ���")
				f.trailer.focus()
				return false;
			}
			if (f.state.value == "") {
				alert("�����¸� �Է����ּ���")
				f.state.focus()
				return false;
			}
			if (f.image.value == "") {
				alert("�̹����� ������ּ���")
				f.image.focus()
				return false;
			}
			return true;
		}
	</script>
	<div class="container">
		<div align="center">
			<form name="f" action="movie_insert.mo"
				onsubmit="return checkMovie()" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="movie_num" value="${movie_num}">
				<table border="1" class="table">
					<tr class="active">
						<th bgcolor="yellow" width="10%">��ȭ����</th>
						<td><input type="text" name="title" class="box" value="${mvdto.title}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">����</th>
						<td><input type="text" name="director" class="box" value="${mvdto.director}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">�帣</th>
						<td><input type="text" name="genre" class="box" value="${mvdto.genre}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">���1</th>
						<td><input type="text" name="actor" class="box" value="${mvdto.actor}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">���2</th>
						<td><input type="text" name="actor2" class="box" value="${mvdto.actor2}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">���3</th>
						<td><input type="text" name="actor3" class="box" value="${mvdto.actor3}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">���4</th>
						<td><input type="text" name="actor4" class="box" value="${mvdto.actor4}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">���5</th>
						<td><input type="text" name="actor5" class="box" value="${mvdto.actor5}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">���6</th>
						<td><input type="text" name="actor6" class="box" value="${mvdto.actor6}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">�ٰŸ�</th>
						<td><textarea name="story" rows="10" cols="50">${mvdto.story}</textarea></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">���</th>
						<td><input type="text" name="grade" class="box" value="${mvdto.grade}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">�󿵽ð�</th>
						<td><input type="text" name="time" class="box" value="${mvdto.time}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">������</th>
						<td><select name="opendate_year">
								<c:forEach var="i" begin="1950" end="2100" step="1">
									<option>${i}</option>
								</c:forEach>
						</select> �� <select name="opendate_month">
								<c:forEach var="j" begin="1" end="12" step="1">
									<option>${j}</option>
								</c:forEach>
						</select> �� <select name="opendate_day">
								<c:forEach var="k" begin="1" end="31" step="1">
									<option>${k}</option>
								</c:forEach>
						</select> ��</td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">������</th>
						<td><input type="text" name="trailer" value="${mvdto.trailer}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">������</th>
						<td><input type="text" name="state" class="box" value="${mvdto.state}"></td>
					</tr>
					<tr class="active">
						<th bgcolor="yellow">�̹���</th>
						<td>
						<c:set var="filename" value="${upPath}/${mvdto.image}"/>
						<img src="${filename}" border="0" width="50" height="50">
						<input type="hidden" name="image2" value="${mvdto.image}">
						<input type="file" name="image" class="box" value="${mvdto.image}"></td>
					</tr>
					<tr bgcolor="black">
						<td colspan="2" align="center"><input type="submit"
							value="���"> <input type="reset" value="���"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<%@ include file="/bottom.jsp"%>