<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增就业</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">新增就业</div>
    <div class="panel-body">
    	<!-- 文件上传：form需要添加enctype属性 -->
        <form action="employment/add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>毕业生名字</label>
                <input type="text" class="form-control" name="name" placeholder="毕业生名字"  required>
            </div>
            <div class="form-group">
                <label >毕业生照片</label>
                <input type="file" class="form-control" name="employmentPhoto" placeholder="毕业生照片">
            </div>
            <div class="form-group">
                <label >学号</label>
                <input type="text" class="form-control" name="username" placeholder="学号">
                </div>
            <div class="form-group">
                <label >工资</label>
                <input type="text" class="form-control" name="salary" placeholder="工资">
            </div>
            <div class="form-group">
                <label >就业公司</label>
                <input type="text" class="form-control" name="company" placeholder="就业公司">
            </div>  
            <div class="form-group">
                <label >就业地址</label>
                <input type="text" class="form-control" name="address" placeholder="就业地址">
            </div>
            <button type="submit" class="btn btn-default">保存</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
