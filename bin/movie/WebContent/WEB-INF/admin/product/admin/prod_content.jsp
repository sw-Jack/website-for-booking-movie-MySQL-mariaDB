<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ include file="/top.jsp"%>
<div align="center">
<form name="f" action="prod_list.mo" method="post">
	<table class="outline" width="99%">
	<caption>��ǰ�󼼺���</caption>
		<tr>
			<th width="15%" class="m2">ī�װ���</th>
			<td width="35%" align="center">${getProd.pcategory}</td>
			<th width="15%" class="m2">��ǰ��ȣ</th>
			<td width="35%" align="center">${getProd.pnum }</td>
		</tr>
		
		<tr>
			<th width="15%" class="m2">��ǰ��</th>
			<td width="35%" align="center">${getProd.pname }</td>
		</tr>
		
		<tr>
			<th width="15%" class="m2">��ǰ�̹���</th>
			<td align="center" colspan="3">
				<img src="${upPath}/${getProd.pimage}" width="40" height="40">
			</td>
		</tr>
		
		<tr>
			<th width="15%" class="m2">��ǰ����</th>
			<td width="35%" align="center">${getProd.pqty }</td>
			<th width="15%" class="m2">��ǰ����</th>
			<td width="35%" align="center">${getProd.pprice }</td>
		</tr>
		
		<tr>
			<th width="15%" class="m2">��ǰ�Ұ�</th>
			<td align="center" colspan="3">
				<textarea name="pcontents" rows="5" cols="50" readOnly>${getProd.pcontent }</textarea>
			</td>
		</tr>
		
		<tr>
			<th width="15%" class="m2">��ǰ����Ʈ</th>
			<td width="35%" align="center">${getProd.ppoint }</td>
		</tr>
		
		<tr>
			<td colspan="4" class="m1" align="center">
				<input type="submit" value="���ư���">
			</td>
		</tr>
	</table>
</form>	
</div>
<%@ include file="/bottom.jsp"%>










