<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ include file="/top.jsp" %>
<script type="text/javascript"> 
	function checkDel(pnum, pimage){
		var isDel = window.confirm("������ �����Ͻðڽ��ϱ�?");
		if (isDel){
			location.href="prod_delete.mo?pnum="+pnum + "&pimage="+pimage;
		}
	}
</script>
	<div align="center">
		<table  class="outline" width="99%">
			<tr>
				<th>��ȣ</th>
				<th>��ǰī�װ�</th>
				<th>��ǰ��</th>
				<th>��ǰ�̹���</th>
				<th>��ǰ����</th>
				<th>��ǰ����</th>
				<th>��ǰ����Ʈ</th>
				<th>����|����</th>
			</tr>

<c:choose>
	<c:when test="${empty prodList}">
		<tr><td colspan="8">��ϵ� ��ǰ�� �����ϴ�.</td></tr>	
	</c:when>
	<c:otherwise>
	<c:forEach var="pdto" items="${prodList}">
		<tr>
				<td>${pdto.pnum}</td>
				<td>${pdto.pcategory}</td>
				<td>${pdto.pname}</td>			
				<td>
					<a href="prod_content.mo?pnum=${pdto.pnum}">
						<img src="${upPath}/${pdto.pimage}" width="40" height="40">
					</a>
				</td>
				<td>${pdto.pprice}</td>
				<td>${pdto.pqty}</td>
				<td>${pdto.ppoint}
				<td>
				<a href="prod_update.mo?pnum=${pdto.pnum}">����</a>|
				<a href="javascript:checkDel('${pdto.pnum}','${pdto.pimage}');">����</a></td>
			</tr>
	</c:forEach>
	</c:otherwise>
</c:choose>
				 	
		</table>
	</div>
<%@ include file="/bottom.jsp" %>










