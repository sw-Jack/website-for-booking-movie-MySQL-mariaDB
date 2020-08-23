<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/top.jsp"%>
<script type="text/javascript">
			function updateCheck(){
				return confirm("�����Ͻðڽ��ϱ�?")
			}
			function deleteCheck(){
				return confirm("������ �����Ͻðڽ��ϱ�?")
			}
			</script>
<div class="container">
<div align="center">
	<h2>��ȭ ����Ʈ</h2>
	<table class="table" width="99%">

		<c:if test="${empty movieList}">
			<tr>
				<td colspan="8">��ϵ� ��ȭ�� �����ϴ�.</td>
			</tr>
		</c:if>
		<tr align="center">
			<c:set value="0" var="row"/>
			<%
				int row = -1;
			%>
			<c:forEach var="mvdto" items="${movieList}">
			
			
				<%row++; 
				if(row%5==0){%>
					<tr>
					</tr>
				<%} %>
				<td align="center"><a href="movie_view.mo?movie_num=${mvdto.movie_num}">
					<img src="${image}/${mvdto.image}" width="130" height="180"></a><br>
					${mvdto.title}<br> 
					<a href="movie_update.mo?movie_num=${mvdto.movie_num}" onclick="return updateCheck();">����</a> | 
					<a href="movie_delete.mo?movie_num=${mvdto.movie_num}" onclick="return deleteCheck();">����</a>
				</td>
			</c:forEach>
		</tr>
	</table>
	<%
	int count = (int)request.getAttribute("count");
	int pageSize = (int)request.getAttribute("pageSize");
	int currentPage = (int) request.getAttribute("currentPage");
		if (count>0){
			int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			int pageBlock = 3;
			int startPage = (currentPage-1)/pageBlock * pageBlock + 1;
			int endPage = startPage + pageBlock - 1;
			if (endPage>pageCount) endPage = pageCount;
			if (startPage>pageBlock){%>
			<a href="movie_list.mo?pageNum=<%=startPage-3%>">[����]</a>	
<%		} 
			for(int i=startPage; i<=endPage; ++i){%>
				<a href="movie_list.mo?pageNum=<%=i%>">[<%=i%>]</a>
<%		}
			if (endPage < pageCount){%>
			<a href="movie_list.mo?pageNum=<%=startPage+3%>">[����]</a>		
<%		}%>			
	
<%	} %>	
</div>
</div>

<%@ include file="/bottom.jsp"%>
