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
    
    <title>My JSP 'post_update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">修改用户</div>
    <div class="panel-body">
        <form action="post/update" method="post">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="id" value="${post.id}">
            <%-- <div class="form-group">
                <label>ID</label>
                <input type="text" class="form-control" name="id" placeholder="请输入ID" value="${post.id }" >
            </div> --%>
           <%--  <div class="form-group">
                <label >公司ID</label>
                <input type="text" class="form-control" name="company_id" placeholder="请输入公司ID" value="${post.company_id }" >
            </div> --%>
            <div class="form-group">
                <label >公司名称</label>
                <input type="text" class="form-control" name="name" placeholder="公司名称" value="${post.name }" required>
            </div>
            <div class="form-group">
                <label >招聘人数</label>
                <input type="text" class="form-control" name="demand_number" placeholder="人数" value="${post.demand_number }" required>
            </div>
            <div class="form-group">
                <label >性别要求</label>
                <input type="radio" name="sex" value="0" checked>男
                <input type="radio" name="sex" value="1">女
            </div>           
            <div class="form-group">
                  <label>学历</label>      
                  <input type="text" class="form-control" name="education" placeholder="学历" value="${post.education }" required >     
             </div>
            
            <div class="form-group">
                  <label>月薪</label>      
                  <input type="text" class="form-control" name="salary" placeholder="月薪" value="${post.salary }" >     
             </div>
             <div class="form-group">
                  <label>工作地点</label>      
                  <input type="text" class="form-control" name="workplace" placeholder="工作地点" value="${post.workplace }" required>     
             </div>
             <div class="form-group">
                  <label>职位描述</label>      
                  <input type="text" class="form-control" name="description" placeholder="职位描述" value="${post.description }" required>     
             </div>
             <div class="form-group">
                  <label>添加时间</label>      
                  <input type="text" class="form-control" name="add_date" placeholder="添加时间" value="${post.add_date }" >     
             </div>
            
            <button type="submit" class="btn btn-default">保存</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>