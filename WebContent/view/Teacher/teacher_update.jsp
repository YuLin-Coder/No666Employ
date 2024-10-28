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
    
    <title>修改教师</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">
    <c:if test="${sessionScope.relo==2}">修改我的信息</c:if>
    <c:if test="${sessionScope.relo!=2}">修改教师</c:if>
    </div>
    <div class="panel-body">
    <form action="teacher/update" method="post" enctype="multipart/form-data">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="relo" value="${sessionScope.relo}">
        	<input type="hidden" name="id" value="${teacher.id}">
        	<input type="hidden" name="Photo" value="${teacher.photo}">
        	<input type="hidden" name="Password" value="${teacher.password}">
            <div class="form-group">
                <label>教师名字</label>
                <input type="text" class="form-control" name="name" placeholder="请输入教师名字" value="${teacher.name}" required>
            </div>
            <div class="form-group">
                <label >电话</label>
                <input type="text" class="form-control" name="tel" placeholder="电话" value="${teacher.tel}">
            </div>
            <div class="form-group">
                <label >性别</label>
                <input type="radio" name="sex" value="0" <c:if test="${teacher.sex==0 }">checked</c:if> >男
                <input type="radio" name="sex" value="1" <c:if test="${teacher.sex==1 }">checked</c:if>>女
            </div> 
            <c:if test="${sessionScope.relo !=2 }">
            <div class="form-group">
                <label >密码</label>
                <input type="text" class="form-control" name="password" placeholder="密码" value="${teacher.password}">
            </div>
            </c:if>
              <div class="form-group">
                <label >照片</label>
                <input type="file" class="form-control" name="teacherPhoto" placeholder="照片">
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </div>
        
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
