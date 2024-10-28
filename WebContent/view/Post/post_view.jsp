<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP post_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/table.css" type="text/css">
  </head>
  
<body style="font-family:SimSun;">
<table class=table4_1>
<tr>
	<th colspan="6" style="text-align:center;font-size:35px; font-family:SimSun;">岗位信息</th>
</tr>
<tr>
	<td >公司名称：</td>    <td>${post.name}</td>
	<td>招聘人数：</td>    <td>${post.demand_number}</td>
</tr>
<tr>
	<td >性别：</td>   <td><c:if test="${post.sex==0}">男</c:if>
                			<c:if test="${post.sex==1}">女</c:if></td>
	<td>月薪：</td>   <td>${post.salary}</td>
</tr>
<tr>
	<td>工作地点：</td>  <td>${post.workplace}</td>
	<td>职业描述：</td>    <td>${post.description}</td>
</tr>
<tr>
    <td>日期：</td>   <td>${post.add_date}</td>
	
	<td> </td>   <td> </td>
</tr>
</table>
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>