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
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">

  </head>
  <c:if test="${result==1}">
       <script>alert("新密码两次输入不正确，请重试");
       </script>
      
    </c:if>	
    <c:if test="${result==2}">
       <script>alert("原密码不正确，请重试");
       </script>
      
    </c:if>
<body>
<div class="panel panel-info">
    <div class="panel-heading">修改个人密码</div>
    <div class="panel-body">
         <form action="userInfo/userInfoupdatepassword" method="post" enctype="multipart/form-data">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="id" value="${userInfo.id}">
        	<input type="hidden" name="password" value="${userInfo.password}">
            <div class="form-group">
                <label>原密码</label>
                <input type="password" class="form-control" name="ypassword"value="${userInfo.ypassword }"  placeholder="请输入原密码" required="required" >
            </div>
            <div class="form-group">
                <label >新密码</label>
                <input type="password" class="form-control" name="xpassword" value="${userInfo.xpassword }" placeholder="请输入新密码" required="required">
            </div>
             <div class="form-group">
                <label >重复新密码</label>
                <input type="password" class="form-control" name="cfpassword" value="${userInfo.cfpassword }" placeholder="请在输入新密码" required="required">
            </div> 
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
