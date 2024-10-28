<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>反馈问题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">反馈问题</div>
    <div class="panel-body">
    <!-- 文件上传，form需要添加enctype 属性 -->
        <form action="issue/add" method="post" enctype="multipart/form-data">
             <input type="hidden" name="username" value="${sessionScope.graduateo.username}">
            <div class="form-group">
                <label>姓名</label>
                <input type="text" class="form-control" name="questions" value="${sessionScope.graduateo.name}"  readonly="readonly">
            </div>
            <div class="form-group">
                <label >反馈内容</label>
                <input type="text" class="form-control" name="qcontent"  placeholder="反馈内容">
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
