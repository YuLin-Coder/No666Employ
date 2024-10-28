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
    
    <title>学生信息</title>
    
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
	<th colspan="6" style="text-align:center;font-size:35px;color: #31708f;font-family:SimSun;">
	<c:if test="${sessionScope.relo==3}">个人信息</c:if>
    <c:if test="${sessionScope.relo!=3}">学生信息</c:if>
	
	</th>
</tr>
<tr>
	<td>姓名：</td>    <td>${graduate.name}</td>
	<td>性别：</td>     <td>
	<c:if test="${graduate.sex==0}">男</c:if>
    <c:if test="${graduate.sex==1}">女</c:if></td>
	<td colspan="2" style="text-align:center">照片</td>
</tr>
<tr>
	<td>民族：</td>   <td>${graduate.nation}</td>
	<td>来源地：</td><td>${graduate.source}</td>
	<td colspan="2" rowspan="4" style="text-align:center" >
	<c:if test="${graduate.photo!=null && graduate.photo!=''}">
	  	<img src="images/${graduate.photo}" width="250" height="220"/>
    </c:if>
	<c:if test="${graduate.photo==null || graduate.photo==''}">
		<img src="images/mytp.jpg" width="250" height="220"/>
	</c:if>
    </td>
</tr>
<tr>
    <td>政治面貌：</td><td>
	<c:if test="${graduate.aspec==0 }">共青团员</c:if>
    <c:if test="${graduate.aspec==1 }">中共党员</c:if>
	<c:if test="${graduate.aspec==2 }">群众</c:if>
	<td>电话：</td>   <td>${graduate.tel}</td>
</tr>

<tr>
	<td>院系：</td> <td>${graduate.university}</td>
	<td>专业：</td>   <td>${graduate.major}</td>
</tr>
<tr>
	
	<td>学历：</td><td>
	<c:if test="${graduate.description==0 }">本科</c:if>
    <c:if test="${graduate.description==1 }">专科</c:if>
    <c:if test="${graduate.description==2 }">硕士</c:if>
    <c:if test="${graduate.description==3 }">博士</c:if></td>
    <td>就业情况：</td>   <td>
	<c:if test="${graduate.status==0 }">就业</c:if>
    <c:if test="${graduate.status==1 }">待业</c:if></td>
</tr>
<!--如果为待业 不显示就业地址 、就业公司、薪资  -->
 <c:if test="${graduate.status==1}">
<tr>
	
</tr>
<!--如果为就业 显示就业地址 、就业公司、薪资  -->
</c:if>
<c:if test="${graduate.status==0 }">
<tr>
    <td>就业地址：</td>   <td>${graduate.address}</td>
    <td>就业公司：</td>   <td>${graduate.company}</td>
	<td>薪资：</td><td>${graduate.salary}</td>
</tr>
</c:if>
<tr>
    <td>学号：</td>  <td>${graduate.username}</td>
    <td>毕业年份：</td>   <td>${graduate.graduateyear}</td>
   <c:if test="${sessionScope.relo!=3}">
	<td>密码：</td>    <td>${graduate.password}</td>
   </c:if>
   <c:if test="${sessionScope.relo==3}">
	<td></td>    <td></td>
   </c:if>
</tr>


</table>
  
  <div  style="font-size:25px; text-align:center;    margin-top:80px " >
       <a  href="graduate/preUpdate?username=${graduate.username}"><span
				class="glyphicon glyphicon-cog"></span> 修改</a>
				<!--拼接参数  -->
			<%-- <a  href="graduate/preUpdate?id=${graduate.id}&relo=${sessionScope.relo}"><span
				class="glyphicon glyphicon-cog"></span> 修改</a> --%>
		</div> 
  
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
