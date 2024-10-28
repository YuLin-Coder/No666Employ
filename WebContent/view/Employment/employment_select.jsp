<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ page import="com.model.Employment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>就业记录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">  
    <link rel="stylesheet" href="css/table.css" type="text/css">
  </head>

<body>
<table class=table4_1 >、
<tr>
<th colspan="4" style="text-align:center;font-size:35px;">就业记录</th>
</tr>
<tr>
	<td >毕业生名称:</td>    <td>${e.name}</td>
	
	<td colspan="2" style="text-align:center">照片</td>
</tr>

<tr>
<td >学号:</td>    <td>${e.username}</td>
	<td  rowspan="2" style="text-align:center" >
    <c:if test="${e.photo!=null && e.photo!=''}">
	  	<img src="images/${e.photo}" width="150" height="120"/>
    </c:if> 
	<c:if test="${e.photo==null || e.photo==''}">
		<img src="images/mytp.jpg" width="150" height="120"/>
	</c:if> 
	</td>
</tr>
<tr>
<td > </td>    <td> </td>
</tr>
</table>
<div  style="width: 100% ;height:500px;" >
<table class="table table-bordered table-striped table-hover"  style="text-align:center;">
    <tr>
        <th width="12%" class="label-info" >序号</th>
        <th width="18%"class="label-info">就业公司</th>
        <th width="18%"class="label-info">就业地址</th>
        <th width="18%"class="label-info">工资</th>
        <th width="18%"class="label-info">就业时间</th>
        <th width="18%"class="label-info">操作</th>
    </tr>
    
   <!--  items需要遍历的数据:用el表达式取controller中放入model中的数据(key) -->
   <!-- var="x" x就是遍历一次取出的对象名 -->
<tr>
	
         
  	<c:forEach items="${employment}" var="n" varStatus="status">
  		<tr>
  			<td>${status.count}</td>
  			<td>${n.company}</td>
  			<td>${n.address}</td>
  			<td>${n.salary} 元</td>
  			<td>${n.addDate}</td>
  			<td><a href="employment/view?id=${n.id}" class="btn btn-success btn-sm">查看</a>
  			<c:if test="${sessionScope.relo ==1}">
  			&nbsp;<a href="employment/del?id=${n.id}" class="btn btn-danger btn-sm">删除</a></c:if>
  			</td> 					
  		</tr>
  	</c:forEach>
</table>
</div>
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
