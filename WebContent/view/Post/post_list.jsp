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
    
    <title>My JSP 'demo_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">岗位列表</div>
    <div class="panel-body">
        <form  class="navbar-form navbar-left" action="post/list" method="post">
            <div class="form-group">
                <input type="text" name="name" class="form-control" placeholder="请输入公司名称"/>&nbsp;
                从&nbsp;<input type="date" name="startDate" class="form-control">&nbsp;到&nbsp;<input type="date" name="endDate" class="form-control">
                <button class="btn btn-success">查询</button>
                <c:if test="${sessionScope.relo < 3}">
                <button type="button" class="btn btn-success" onclick="location.href='view/Post/post_add.jsp'">新增</button>
                </c:if>
            </div>
        </form>
    </div>
</div>



<table class="table table-bordered table-striped table-hover" style="text-align:center;">
    <tr>
        <th width="5%" class="label-info">序号</th>
        <th class="label-info">公司名称</th>
        <th class="label-info">招聘人数</th>
        <th class="label-info">性别要求</th>
        <th class="label-info">学历</th>
        <th class="label-info">月薪</th>
        <th class="label-info">工作地点</th>
        <th class="label-info">职位描述</th>
        <c:if test="${sessionScope.relo < 3}">
        <th class="label-info">添加时间</th>
        
        <th class="label-info">操作</th>
         </c:if>
    </tr>
   <!--  items需要遍历的数据:用el表达式取controller中放入model中的数据(key) -->
   
   <!-- var="x" x就是遍历一次取出的对象名 -->
    <c:forEach items="${list}" var="p" varStatus="status">
    	<tr>
    	<!-- status.count显示遍历的是第几条 -->
    	<td>${status.count} </td>
    	<td><a href="post/view?id=${p.id}">${p.name}</a></td>
  			<td>${p.demand_number}</td>
  			<td>
	    		<!-- if标签 test中的内容就是条件判断语句(用el表达式) -->
	    		<c:if test="${p.sex==0}">男</c:if>
	    		<c:if test="${p.sex==1}">女</c:if>
	    	</td>
  			<td>${p.education} </td>
  			<td>${p.salary}</td>
  			<td>${p.workplace}</td>
  			<td>${p.description}</td>
  			<c:if test="${sessionScope.relo < 3}">
  			<td>${p.add_date}</td>
  			<td><a href="post/preUpdate?id=${p.id}" class="btn btn-success btn-sm">修改</a>&nbsp;<a href="post/del?id=${p.id}" class="btn btn-danger btn-sm">删除</a></td>
            </c:if>
      </tr>
    </c:forEach>
     
</table>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
