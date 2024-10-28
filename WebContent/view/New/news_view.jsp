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
    
    <title>公告信息</title>
    
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
	<th colspan="6" style="text-align:center;font-size:35px;">公告信息</th>
</tr>
<tr>
	<td>标题：</td>    <td>${news.title}</td>
	<td colspan="2" style="text-align:center">照片</td>
</tr>
<tr>
	<td>内容：</td>   <td>${news.content}</td>
	<td colspan="2" rowspan="4" style="text-align:center" >
	<c:if test="${news.photo!=null && news.photo!=''}">
	  	<img src="images/${news.photo}" width="250" height="220"/>
    </c:if>
	<c:if test="${news.photo==null || news.photo==''}">
		<img src="images/mytp.jpg" width="250" height="220"/>
	</c:if>
	</td> 
</tr>
<tr>
	<td>时间：</td>   <td>${news.add_date}</td>
</tr>

</table>
  
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
