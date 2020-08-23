<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/top.jsp"%>

	
<c:choose>
	<c:when test="${empty cateList}">
		<script type="text/javascript">
			alert("ī�װ��� ���� ����� �ּ���")
			location.href="cate_input.mo"
		</script>	
	</c:when>
	<c:otherwise>
		<div align="center">
	<form name="f" action="prod_input.mo" method="post" enctype="multipart/form-data">
		<table class="outline" width="600">
			<caption>��ǰ���ī�װ�</caption>
			<tr>
				<th class="m2" width="20%">ī�װ�</th>
				<td align="left">   
					<select name="pcategory">

					<c:forEach var="dto" items="${cateList}">
						<option value="${dto.cname}">${dto.cname} </option>
					</c:forEach>			
					</select>
				</td>
			</tr>	
			<tr>
				<th class="m2" width="20%">��ǰ��</th>
				<td align="left"><input type="text" name="pname" class="box"></td>
			</tr>
			
			<tr>
				<th class="m2" width="20%">��ǰ����</th>
				<td align="left"><input type="text" name="pprice" class="box"></td>
			</tr>
			
			<tr>
				<th class="m2" width="20%">��ǰ����</th>
				<td align="left"><input type="text" name="pqty" class="box"></td>
			</tr>
			
			<tr>
				<th class="m2" width="20%">��ǰ�̹���</th>
				<td align="left"><input type="file" name="pimage" class="box"></td>
			</tr>
			
			<tr>
				<th class="m2" width="20%">��ǰ�Ұ�</th>
				<td align="left">
					<textarea name="pcontent" rows="4" cols="50">
					</textarea>
				</td>
			</tr>
			
			<tr>
				<th class="m2" width="20%">��ǰ ���� ����Ʈ</th>
				<td align="left"><input type="text" name="ppoint" class="box"></td>
			</tr>
			
			<tr>
				<td align="center" colspan="2" class="m1">
					<input type="submit" value="��ǰ���">
					<input type="reset" value="���">	
				</td>
			</tr>
			
		
		</table>
	
	</form>

</div>
	</c:otherwise>
</c:choose>
	
<%@ include file="/bottom.jsp"%>
	