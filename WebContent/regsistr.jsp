<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="css/admin.css"   type="text/css">
	<link rel="stylesheet" href="css/pintuer.css" type="text/css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div  class="regsistr">
     <div style="font-size:30px;text-align:center;">注册新用户</div>
     <div class="regsistr-l">
    	<!-- 文件上传，form需要添加 enctype属性-->
        <form action="regsistr/add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>用户名</label>
                <input type="text" class="form-control" name="username" placeholder="请输入用户名"  required>
            </div>
            <div class="form-group">
                <label >姓名</label>
                <input type="text" class="form-control" name="name" placeholder="请输入姓名" required>
            </div>
            <div class="form-group">
                <label >密码</label>
                <input type="text" class="form-control" name="password" placeholder="密码">
            </div>
            <div class="form-group">
                <label >性别</label>
                <input type="radio" name="sex" value="0" checked>男
                <input type="radio" name="sex" value="1">女
            </div>           
            <div class="form-group">
                <label >照片</label>
                <input type="file" class="form-control" name="userPhoto" placeholder="照片">
            </div>
             <!-- <div class="form-group">
                <label >权限</label>
                <input type="radio" name="relo" value="4" checked>学生
                <input type="radio" name="relo" value="3">教师
                <input type="radio" name="relo" value="2">管理员
            </div> --> 
            <button type="submit" class=" button button-block bg-main text-big input-big">提交</button>
        </form>
    </div>
   </div>
  </body>
</html>
