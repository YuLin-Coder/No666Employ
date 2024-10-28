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
    
    <title>个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/table.css" type="text/css">
  </head>
  
<body>
<table class=table4_1>
<tr>
	<th colspan="4" style="text-align:center;font-size:35px;color: #31708f;font-family:SimSun;">个人信息</th>
</tr>
<tr>
	<td >用户名：</td>    <td>${userInfo.username}</td>
	<td colspan="2" style="text-align:center">照片</td>
</tr>
<tr>
	<td>姓名：</td>    <td>${userInfo.name}</td>
	<td colspan="3" rowspan="3" style="text-align:center" >
	<c:if test="${userInfo.photo!=null && userInfo.photo!=''}">
	  	<img src="images/${userInfo.photo}" width="250" height="220"/>
    </c:if>
	<c:if test="${userInfo.photo==null || userInfo.photo==''}">
		<img src="images/mytp.jpg" width="250" height="220"/>
	</c:if>
	</td>
</tr>
<tr>
    
	<td>性别：</td>   <td>
     <c:if test="${userInfo.sex==0}">男</c:if>
     <c:if test="${userInfo.sex==1}">女</c:if></td>
</tr>

<tr>
	<td>注册日期:</td>  <td>${userInfo.addDate}</td>
</tr>

</table>
<div  style="font-size:25px; text-align:center;    margin-top:80px " >
			<a  href="userInfo/preUpdate?id=${userInfo.id}"><span
				class="glyphicon glyphicon-cog"></span> 修改</a>
		</div>
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
