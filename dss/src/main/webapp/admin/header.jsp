<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DaeSinSa Admin</title>
<link rel = "stylesheet" href="admin/css/admin.css">
<script type="text/javascript" src="admin/product/product.js"></script>
<c:choose>
	<c:when test="${empty workerId}">
		<script type="text/javascript">
			location.href = "DssServlet?command=admin_login_form";
		</script>
	</c:when>
</c:choose>
</head>
<body onload="go_ab()">
	<div id = "wrap">
		<header>
			<div id="logo">
				<a href="DssServlet?command=admin_login_form">
					<img style="width:800px" src="#">
					<img src="#">
				</a>
			</div>
			<input class="btn" type="button" value="logout" style="float: right:"
				onClick="location.href='DssServlet?command=admin_logout'">
		</header>
		<div class="clear"></div>
