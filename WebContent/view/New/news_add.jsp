<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增公告</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">新增公告</div>
    <div class="panel-body">
    <!-- 文件上传，form需要添加enctype 属性 -->
    <c:if test="${sessionScope.relo == 3}">
     <form action="news/add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>标题</label>
                <input type="text" class="form-control" name="title" placeholder="标题"  required>
            </div>
            <div class="form-group">
                <label >分类</label>
               <select name="classify"class="form-control">
               <option  value=""  disabled selected hidden>请选择分类</option>
               <option  value="失物招领">失物招领</option>
               </select>
            </div>
            <div class="form-group">
                <label >内容</label>
                <input type="text" class="form-control" name="content" value="${news.content }" placeholder="内容" required>
            </div>
            <div class="form-group">
                <label >照片</label>
                <input type="file" class="form-control" name="myPhoto" placeholder="照片">
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </c:if>
    <c:if test="${sessionScope.relo != 3}">
        <form action="news/add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>标题</label>
                <input type="text" class="form-control" name="title" placeholder="标题"  required>
            </div>
            <div class="form-group">
                <label >分类</label>
               <select name="classify"class="form-control">
               <option  value=""  disabled selected hidden>请选择分类</option>
               <option  value="招聘">招聘</option>
               <option  value="失物招领">失物招领</option>
               <option  value="校内新闻">新闻</option>
               <option  value="校内公告">校内公告</option>
               </select>
            </div>
            <div class="form-group">
                <label >内容</label>
                <input type="text" class="form-control" name="content" value="${news.content }" placeholder="内容" required>
            </div>
            <div class="form-group">
                <label >照片</label>
                <input type="file" class="form-control" name="myPhoto" placeholder="照片">
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>
        </c:if>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
