<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="movie.admin.board.dto.*"%>
<%@ include file="/top.jsp" %>
<script type="text/javascript">
			function updateCheck(){
				return confirm("�����Ͻðڽ��ϱ�?")
			}
			function deleteCheck(){
				return confirm("������ �����Ͻðڽ��ϱ�?")
			}
</script>
<%
	NoticeDTO dto = (NoticeDTO)request.getAttribute("getnotice");
%>
<div class="container">
	<table class="table">
		<thead>
			<h4>��������</h4>
		</thead>
		<tbody>
			<tr>
				<th>����</th><td colspan="3"><%=dto.getTitle()%></td>
			</tr>
			<tr>
				<th>�ۼ���</th><td><%=dto.getName()%></td><th>�ۼ���</th><td><%=dto.getWritedate()%></td>
			</tr>
			<tr>
				<th>����</th><td colspan="3"><%=dto.getContent()%></td>
			</tr>
			<tr>
				<td colspan="4">
					<a href="noticeupdate.mo?notice_num=<%=dto.getNotice_num()%>" onclick="return updateCheck();">����</a> |
					<a href="noticedelete.mo?notice_num=<%=dto.getNotice_num()%>" onclick="return deleteCheck();">����</a> |
					<a href="noticelist.mo" onclick="return deleteCheck();">���</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<%@ include file="/bottom.jsp" %>