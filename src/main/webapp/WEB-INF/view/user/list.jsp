<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="base" value="${pageContext.request.contextPath}"/>
<c:set var="appname" value="user"/>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ZPro 基础架构 -冰迪网络(出品)</title>
<link href="${base}/css/bootstrap.css" rel="stylesheet">
<link href="${base}/css/bootstrap-theme.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<c:import  url="../common/nav.jsp" />
		<table class="table table-hover">
		<thead>
			<tr>
				<td>编号</td>
				<td>姓名</td>
				<td>邮箱</td>
				<td ><span class="glyphicon glyphicon-cog"></span>&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;<a href="${base}/${appname}/input.do" ><i class="icon-plus"></i>添加</a></td>
			</tr>
		</thead>
			<c:forEach items="${page.list}" var="xx">
			<tr>
				<td>${xx.id}</td>
				<td>${xx.name}</td>
				<td>${xx.email}</td>
				<td>&nbsp;<a href="${base}/${appname}/input.do?id=${xx.id}" class="btn">修改</a> <a href="${base}/${appname}/delete.do?id=${xx.id}"  class="btn">删除</a> </td>
			</tr>
			</c:forEach>
		</table>
		
		<form name="formsearch" class="navbar-form navbar-left" role="search" method="post">
		  <input type="hidden" name="index" value="${page.index}"  id="formindex"/>
		  <input type="hidden" name="order" value="desc" />
		  <input type="hidden" name="orderBy" value="id"/>
		  <div class="form-group">
		    <input type="text" class="form-control" name="name_OR_email_LIKES" value="${page.p.name_OR_email_LIKES}" placeholder="姓名 或 Email">
		  </div>
		  <button type="submit" class="btn btn-default">Search</button>
		
		<tags:pagination page="${page}"/>
		</form>
	</div>

	<!-- javascript -->
	<script src="${base}/js/jquery.js"></script>
	<script src="${base}/js/bootstrap.js"></script>
</body>
</html>