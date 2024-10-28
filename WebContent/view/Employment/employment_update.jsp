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
    
    <title>修改就业</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">修改就业</div>
    <div class="panel-body">
        <form action="employment/update" method="post" enctype="multipart/form-data">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="id" value="${employment.id}">
        	<input type="hidden" name="Photo" value="${employment.photo}">
            <div class="form-group">
              
                <label>毕业生名字</label>
                <input type="text" class="form-control" name="name" placeholder="请输入公司名" value="${employment.name}" readonly="readonly">
            </div>
             <div class="form-group">
                <label >学号</label>
                <input type="text" class="form-control" name="username" placeholder="学号" value="${employment.username}" readonly="readonly">
            </div>
            <div class="form-group">
                <label >学历</label>
               <input type="hidden" name="description" value="${employment.description}">
               <c:if test="${employment.description==0 }"> <input type="text" class="form-control"  value="本科" readonly="readonly"></c:if> 
               <c:if test="${employment.description==1 }"> <input type="text" class="form-control"  value="专科" readonly="readonly"></c:if> 
               <c:if test="${employment.description==2 }"> <input type="text" class="form-control"  value="硕士" readonly="readonly"></c:if> 
               <c:if test="${employment.description==3 }"> <input type="text" class="form-control"  value="博士" readonly="readonly"></c:if> 
            </div>
            <div class="form-group">
                <label >工资</label>
                <input type="number" class="form-control" name="salary" placeholder="工资" value="${employment.salary}" required>
            </div>
            <div class="form-group">
                <label >就业公司</label>
                <input type="text" class="form-control" name="company" placeholder="就业公司" value="${employment.company}" required>
            </div>
            
            
            <div class="form-group">
                <label >就业地址</label>
                <input type="text" class="form-control" name="address" placeholder="就业地址" value="${employment.address}" required>
            </div>
            <button type="submit" class="btn btn-default">保存</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
