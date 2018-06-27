<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/decorator/hello_decorator.jsp --%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>		<decorator:title/>		</title>

<decorator:head/>

</head>
<body>
<table width="95%" border="1" cellpadding="0" cellspacing="0" align="center"> 
	
	<tr> <td colspan="3" align="right">
	
	
	
	</td> </tr>
	<tr> <td width="15%" align="right" valign="top"><br>
	<c:if test="${empty sessionScope.login }">
		<a href="${path}/model2/member/loginForm.jsp">�α���</a><br>
	</c:if>
	
	<c:if test="${!empty sessionScope.login }">${sessionScope.login }��!
		<a href="${path}/model2/member/logout.me">�α׾ƿ�</a><br>
	</c:if>
	<a href="${path}/model2/member/main.me">ȸ������</a><br>
	<a href="${path}/model2/board/list.bo">�Խ���</a><br>
	</td> <td colspan="2" align="left">
	
	<decorator:body/>
	
	 </td>
	</tr>
	<tr> <td colspan="3" align="right">���� ��ī���� since 2016</td> </tr>
</table>
</body>
</html>