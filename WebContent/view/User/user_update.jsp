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
    
    <title>修改个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">修改我的信息</div>
    <div class="panel-body">
        <form action="userInfo/update" method="post" enctype="multipart/form-data">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="id" value="${userInfo.id}">
        	<input type="hidden" name="Photo" value="${userInfo.photo}">
        	<input type="hidden" name="Password" value="${userInfo.password}">
        	<input type="hidden" name="Password" value="${userInfo.username}">
            <div class="form-group">
                <label >姓名</label>
                <input type="text" class="form-control" name="name" placeholder="请输入姓名" value="${userInfo.name }" required>
            </div>
            <div class="form-group">
                <label >性别</label>
                <input type="radio" name="sex" value="0" <c:if test="${userInfo.sex==0 }">checked</c:if> >男
                <input type="radio" name="sex" value="1" <c:if test="${userInfo.sex==1 }">checked</c:if>>女
            </div>           
             <div class="form-group">
                <label >照片</label>
                <input type="file" class="form-control" name="userPhoto" placeholder="照片">
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
