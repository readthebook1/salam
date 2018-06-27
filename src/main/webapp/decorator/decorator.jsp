<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%-- /WebContent/decorator/decorator_test_bar.jsp --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function w3_open() {
  document.getElementById("main").style.marginLeft = "25%";
  document.getElementById("mySidebar").style.width = "25%";
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title><decorator:title/></title>
<decorator:head/>
</head>
<body>

<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Close &times;</button>
  
  <c:if test="${empty sessionScope.loginUser.userId}">
		<a href="${path}/user/login.shop" class="w3-bar-item w3-button">Login</a>
	</c:if>
	
	<c:if test="${!empty sessionScope.loginUser.userId}"><h3 class="w3-bar-item">${sessionScope.loginUser.userId}</h3>
		<a href="${path}/user/logout.shop" class="w3-bar-item w3-button">Logout</a>
	</c:if>
	
	<a href="${path}/user/mypage.shop?id=${sessionScope.loginUser.userId}" class="w3-bar-item w3-button">Member Info</a>
	<a href="${path}/item/list.shop" class="w3-bar-item w3-button">ItemList</a>
	<a href="${path}/board/list.shop" class="w3-bar-item w3-button">Board</a>
	
	 <c:if test="${sessionScope.loginUser.userId == 'admin'}">
		<a href="${path}/admin/admin.shop" class="w3-bar-item w3-button">Member List</a>
	</c:if>
</div>

<div id="main">
<div class="w3-teal">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
  <h1><decorator:title/></h1>
  </div>
</div>


<div class="w3-container">
<decorator:body/>
</div>
</div>
<div class="w3-container w3-black" align="right"><p>	
��ȣ��: �����ī���� | ��ǥ��: �̽¿� | ��ȭ: 02-2108-5900 | �ѽ�: 02-2108-5999 | ����ڵ�Ϲ�ȣ: 457-85-00300<br>
�ּ�: (��)08505 ����� ��õ�� ���������2�� 115, 509ȣ, 811ȣ (���굿, �븢��ũ��Ÿ�� 3��) | ����Ǹž��Ű��ȣ: �� 2014-�����õ-0864 ȣ<br>
��������å����: �ֽ��� | jsj@goodee.co.kr | Copyright(C) 2015 GooDee ALL Right Reserved.<p></div>

</body>

</html>

