<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/top.jsp"%>
<div class="container">
	<div align="center">
		<form name="f" action="movie_list.mo" method="get">
			<table class="class" width="99%">
				<caption>��ȭ�󼼺���</caption>
					<tr>
						<td align="center" rowspan="3" width="5%"><img
							src="${image}/${mvdto.image}" border="0" width="80" height="100">
						</td>
						<td width="35%" align="left">${mvdto.title}</td>
					</tr>
					<tr">
						<td width="35%" align="left">${mvdto.genre} |
							${mvdto.opendate_year}. ${mvdto.opendate_month}.
							${mvdto.opendate_day} | ${mvdto.time} | ${mvdto.grade}</td>
					</tr>
					<tr>
						<td width="35%" align="left">����: ${mvdto.director} |
							${mvdto.actor}, ${mvdto.actor2}, ${mvdto.actor3},
							${mvdto.actor4}, ${mvdto.actor5}, ${mvdto.actor6}</td>
					</tr>
					<tr>
						<td align="left" colspan="2"><iframe width="560"
								height="315" src="${mvdto.trailer}" frameborder="0"
								allowfullscreen></iframe> <%-- <h1><a href="${mvdto.trailer}">Ʈ���Ϸ�</a></h1> --%></td>
					</tr>
				<tr>
					<td colspan="4" class="m1" align="center"><input type="submit"
						value="���ư���"></td>
				</tr>

			</table>
		</form>
	</div>
</div>
<%@ include file="/bottom.jsp"%>










