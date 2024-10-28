<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>就业信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/table.css" type="text/css">
  </head>
  
<body style="font-family:SimSun;">
<table class=table4_1 >
<tr>
	<th colspan="4" style="text-align:center;font-size:35px;">就业信息</th>
</tr>
<tr>
	<td >毕业生名称:</td>    <td>${employment.name}</td>
	
	<td colspan="2" style="text-align:center">照片</td>
</tr>
<tr>
	<td >就业公司:</td>   <td>${employment.company}</td>
	<td  rowspan="4" style="text-align:center" >
    <c:if test="${employment.photo!=null && employment.photo!=''}">
	  	<img src="images/${employment.photo}" width="250" height="220"/>
    </c:if>
	<c:if test="${employment.photo==null || employment.photo==''}">
		<img src="images/mytp.jpg" width="250" height="220"/>
	</c:if>
	</td>
</tr>
<tr>
	<td>工资:</td>    <td>${employment.salary}元</td>
</tr>
<tr>
	<td>就业地址:</td>    <td>${employment.address}</td>
</tr>
<tr>
	<td>就业时间:</td>    <td>${employment.addDate}</td>
</tr>
</table>
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
