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
    
    <title>修改公告</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">修改公告</div>
    <div class="panel-body">
        <form action="news/update" method="post" enctype="multipart/form-data">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="id" value="${news.id}">
        	<div class="form-group">
                <label >分类</label>
                <input type="text" class="form-control" name="classify" value="${news.classify }" readonly="readonly">
            </div>
            <div class="form-group">
                <label>标题</label>
                <input type="text" class="form-control" name="title" placeholder="请输入标题" value="${news.title }" required>
            </div>
             <div class="form-group">
                <label >内容</label>
                <input type="text" class="form-control" name="content" value="${news.content }" placeholder="请输入内容"  required>
            </div>
             
            <div class="form-group">
                <label >照片</label>
                <input type="hidden" name="Photo" value="${news.photo}">
                <input type="file" class="form-control" name="myPhoto" placeholder="照片">
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
