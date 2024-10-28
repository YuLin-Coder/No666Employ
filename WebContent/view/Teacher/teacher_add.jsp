<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增教师</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">新增教师</div>
    <div class="panel-body">
    	<!-- 文件上传：form需要添加enctype属性 -->
        <form action="teacher/add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>教师名字(必填)</label>
                <input type="text" class="form-control" name="name" placeholder="请输入教师名字"  required>
            </div>
            
            <div class="form-group">
                <label >教师登录名(必填)</label>
                <input type="text" class="form-control" name="username" placeholder="教师登录名" required>
            </div>
            <div class="form-group">
                <label >密码(必填)</label>
                <input type="text" class="form-control" name="password" placeholder="密码" required>
            </div>
            <div class="form-group">
                <label >电话</label>
                <input type="text" class="form-control" name="tel" placeholder="电话">
            </div>

            <div class="form-group">
                <label >性别</label>
                <input type="radio" name="sex" value="0" checked>男
                <input type="radio" name="sex" value="1">女
            </div> 
            <div class="form-group">
                <label >照片</label>
                <input type="file" class="form-control" name="teacherPhoto" placeholder="照片">
            </div>
            <button type="submit" class="btn btn-default">保存</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
