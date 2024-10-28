<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'post_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
  </head>
  
  <body>
   <div class="panel panel-info">
    <div class="panel-heading" >新增岗位</div>
    <div class="panel-body">
        <form action="post/add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label >公司名字</label>
                <input type="text" class="form-control" name="name" placeholder="请输入公司名字">
            </div>
 
            <div class="form-group">
                <label >性别要求</label>
                <input type="radio" name="sex" value="0" checked>男
                <input type="radio" name="sex" value="1">女
            </div>           
            <div class="form-group">
                  <label>学历</label>      
                  <input type="text" class="form-control" name="education" placeholder="学历" required >     
             </div>
              <div class="form-group">
                  <label>招聘人数</label>      
                  <input type="text" class="form-control" name="demand_number" placeholder="人数" required >     
             </div>
            <div class="form-group">
                  <label>月薪</label>      
                  <input type="text" class="form-control" name="salary" placeholder="月薪">     
             </div>
             <div class="form-group">
                  <label>工作地点</label>      
                  <input type="text" class="form-control" name="workplace" placeholder="工作地点" required>     
             </div>
             <div class="form-group">
                  <label>职位描述</label>      
                  <input type="text" class="form-control" name="description" placeholder="职位描述" required>     
             </div>
   
             <button type="submit" class="btn btn-default">保存</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
  </body>
</html>
