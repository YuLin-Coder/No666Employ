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
    
    <title>回复反馈</title>
    
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
    <c:if test="${issue.reply==2}">
           回复反馈
    </c:if>
    <c:if test="${issue.reply==1}">
           修改反馈
    </c:if>
    </div>
    <div class="panel-body">
        <form action="issue/update" method="post" enctype="multipart/form-data">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="id" value="${issue.id}">
            <div class="form-group">
                <label>反馈者</label>
                 <input type="text" class="form-control" name="questions" value=" ${issue.questions }" readonly="readonly">
            </div>
             <div class="form-group">
                <label >反馈内容</label>
                <input type="text" class="form-control" name="qcontent" value=" ${issue.qcontent }" readonly="readonly">
            </div> 
             <div class="form-group">
                <label >反馈时间：</label>
                <input type="text" class="form-control" name="qdate" value="${issue.qdate }" readonly="readonly">
            </div>
            <c:if test="${sessionScope.relo<2}">
            <div class="form-group">
                <label >回复人：</label>
                <input type="text" class="form-control" name="replier" value="${sessionScope.userInfo.name}" readonly="readonly">
            </div>
            </c:if>
             <c:if test="${sessionScope.relo==2}">
            <div class="form-group">
                <label >回复人：</label>
                <input type="text" class="form-control" name="replier" value="${sessionScope.teacher.name}" readonly="readonly">
            </div>
            </c:if>
             <div class="form-group">
                <label >回复内容</label>
                <input type="text" class="form-control" name="rcontent" value="${issue.rcontent }" placeholder="回复内容">
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
