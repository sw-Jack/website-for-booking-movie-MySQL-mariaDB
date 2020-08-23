<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,movie.admin.board.dto.*"%>
<%@ include file="/top.jsp" %>
<%
	List<NoticeDTO> list = (List)request.getAttribute("noticeList");
%>
<div class="container">
	<table class="table">
		<thead>
			<h4>��������</h4>
		</thead>
		<tbody>
			<tr>
				<th>�� ��ȣ</th><th>����</th><th>�ۼ���</th><th>�ۼ���</th>
			</tr>
			<%if(list==null||list.size()==0){ %>
			<tr>
				<th>�ۼ��� ���������� �����ϴ�</th>
			</tr>
			<%}else{ %>
			<%for(NoticeDTO dto : list){ %>
			<tr>
				<td>
					<%=dto.getNotice_num()%>
				</td>
				<td width="40%">
					<a href="noticecontent.mo?notice_num=<%=dto.getNotice_num()%>"><%=dto.getTitle()%></a>
				</td>
				<td>
					<%=dto.getName()%>
				</td>
				<td>
					<%=dto.getWritedate()%>
				</td>
			</tr>
			<%} 
				}%>
		</tbody>
	</table>
</div>
<%@ include file="/bottom.jsp" %>