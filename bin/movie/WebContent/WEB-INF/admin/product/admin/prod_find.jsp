<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp" %>    

<div align="center">
	<hr color="green" width="300">

	
	<h2>��ǰ ã��</h2>
	<table>
	<form name="f" method="post" action="prod_find.mo">
		<tr >
			<th align="center">ī�װ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰ��</th>
		</tr>	
		<tr>
			<td align="center">
					<select name="search">
					<c:forEach var="dto" items="${cateList}">
						<option value="${dto.cname}">${dto.cname} </option>
					</c:forEach>			
					</select>
					<input type= "text" name="searchString"/>
					<input type= "submit" value="ã��"/>
			</td>
		</tr>
	</form>
	</table>
	<c:if test="${empty find}">
 	<hr width="300">
 	<table width="700" class="outline">
 		<tr>
 			<th class="m3">��ǰ��ȣ</th>
 			<th class="m3">ī�װ�</th>
 			<th class="m3">��ǰ��</th>
 			<th class="m3">��ǰ����</th>
			<th class="m3">��ǰ����</th>
			<th class="m3">��ǰ�̹���</th>
			<th class="m3">��ǰ�Ұ�</th>
			<th class="m3">��ǰ��������Ʈ</th>
			<th class="m3">����|����</th>
 	</tr>
 <c:choose>
	<c:when test="${empty findProd}">
		<tr>
 			<td colspan="10"> ã���ô� ��ǰ�� �����ϴ�. </td>
 		</tr>
	</c:when>
	<c:otherwise>
	<c:forEach var="pdto" items="${findProd}">
	<tr>
		<td>${pdto.pnum}</td>
		<td>${pdto.pcategory} </td>
		<td>${pdto.pname}</td>
		<td>${pdto.pprice}</td>
		<td>${pdto.pqty}</td>
		<td><img src="${upPath}/${pdto.pimage}" width="40" height="40"></td>
		<td>${pdto.pcontent}</td>
		<td>${pdto.ppoint}</td>
		<td><a href="prod_update.mo?pnum=${dto.user_num}">����</a>|
			<a href="prod_delete.mo?pnum=${dto.user_num}">����</a></td>
	</tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
 	</table>
 	</c:if>
	
</div>
<%@ include file="/bottom.jsp" %>