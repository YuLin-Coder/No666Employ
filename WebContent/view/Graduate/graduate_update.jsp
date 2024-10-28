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
    
    <title>修改学生</title>
    
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
    <c:if test="${sessionScope.relo==3}">修改我的信息</c:if>
    <c:if test="${sessionScope.relo!=3}">修改学生</c:if>
    </div>
    <div class="panel-body">
        <form action="graduate/update" method="post" enctype="multipart/form-data">
        	<!-- 隐藏列向后台传递参数 -->
        	<input type="hidden" name="relo" value="${sessionScope.relo}">
        	<input type="hidden" name="username" value="${graduate.username}">
        	<input type="hidden" name="Password" value="${graduate.password}">
            <div class="form-group">
                <label>姓名(必填)</label>
                <input type="text" class="form-control" name="name" placeholder="请输入姓名" value="${graduate.name }" required>
            </div>
             <div class="form-group">
                <label >性别</label>
                <input type="radio" name="sex" value="0" <c:if test="${graduate.sex==0 }">checked</c:if> >男
                <input type="radio" name="sex" value="1" <c:if test="${graduate.sex==1 }">checked</c:if>>女
            </div> 
             <div class="form-group">
                <label >民族</label>
                <input type="text" class="form-control" name="nation" value="${graduate.nation }" placeholder="民族">
            </div>
             <div class="form-group">
                <label >来源地(必填)</label>
                <input type="text" class="form-control" name="source" value="${graduate.source }" placeholder="来源地" required>
            </div>
            <c:if test="${sessionScope.relo !=3 }">
             <div class="form-group">
                <label >密码(必填)</label>
                <input type="text" class="form-control" name="password" value="${graduate.password }" placeholder="密码" required>
            </div>
            </c:if>
            <div class="form-group">
                <label >毕业年份(必填)</label>
               <input type="hidden" name="Graduateyear" value="${graduate.graduateyear}">
               <select name="graduateyear"class="form-control">
               <option  value="${graduate.graduateyear}">${graduate.graduateyear}</option>
               <option  value="未毕业">未毕业</option>
               <option  value="2019年">2019年</option>
               <option  value="2018年">2018年</option>
               <option  value="2017年">2017年</option>
               <option  value="2016年">2016年</option>
               <option  value="2015年">2015年</option>
               <option  value="2014年">2014年</option>
               <option  value="2013年">2013年</option>
               </select>
            </div>
            <div class="form-group">
                <label >院系(必填)</label>
                <input type="text" class="form-control" name="university" placeholder="院系" value="${graduate.university }" required>
            </div>
            
            <div class="form-group">
                <label >联系方式(必填)</label>
                <input type="text" class="form-control" name="tel" value="${graduate.tel }" placeholder="联系方式" required>
            </div>
            <div class="form-group">
                <label >学历</label>
                <input type="radio" name="description" value="0" <c:if test="${graduate.description==0 }">checked</c:if>>本科
                <input type="radio" name="description" value="1" <c:if test="${graduate.description==1 }">checked</c:if>>专科
                <input type="radio" name="description" value="2" <c:if test="${graduate.description==2 }">checked</c:if>>硕士
                <input type="radio" name="description" value="3" <c:if test="${graduate.description==3 }">checked</c:if>>博士
            </div> 
            <div class="form-group">
                <label >专业</label>
                <input type="text" class="form-control" name="major" value="${graduate.major }" placeholder="专业" required>
            </div>
            
             <div class="form-group">
                <label >政治面貌</label>
                <input type="radio" name="aspec" value="0" <c:if test="${graduate.aspec==0 }">checked</c:if>>共青团员
                <input type="radio" name="aspec" value="1" <c:if test="${graduate.aspec==1 }">checked</c:if>>中共党员
                <input type="radio" name="aspec" value="2" <c:if test="${graduate.aspec==2 }">checked</c:if>>群众
            </div> 
             <div class="form-group">
                <label >就业情况</label>
                <input type="radio" name="status" value="0" <c:if test="${graduate.status==0 }">checked</c:if>>就业
                <input type="radio" name="status" value="1" <c:if test="${graduate.status==1 }">checked</c:if>>待业
            </div> 
             <div class="form-group">
                <label >就业公司</label>
                <input type="text" class="form-control" name="company" value="${graduate.company }" placeholder="就业公司">
            </div>
             <div class="form-group">
                <label >薪资</label>
                <input type="text" class="form-control" name="salary" value="${graduate.salary }" placeholder="薪资">
            </div>
            <div class="form-group">
                <label >就业地址</label>
                <input type="text" class="form-control" name="address" value="${graduate.address }" placeholder="就业地址(省份就可以)">
            </div>
            <div class="form-group">
                <label >照片</label>
                 <input type="hidden" name="Photo" value="${graduate.photo}">
                <input type="file" class="form-control" name="myPhoto" placeholder="照片">
            </div>
                     
            <button type="submit" class="btn btn-default">提交</button>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
