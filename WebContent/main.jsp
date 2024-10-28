<%@page import="com.model.UserInfo"%>
<%@page import="java.util.Date"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生就业后台管理中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--  
     width:可视区域的宽度，值可为数字或关键词device-width
     intial-scale:页面首次被显示是可视区域的缩放级别，取值1.0则页面按实际尺寸显示，无任何缩放
     maximum-scale=1.0, minimum-scale=1.0;可视区域的缩放级别，
     maximum-scale用户可将页面放大的程序，1.0将禁止用户放大到实际尺寸之上。
     user-scalable:是否可对页面进行缩放，no 禁止缩放 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!--若页面需默认用极速-->
<meta name="renderer" content="webkit">
<title>毕业生就业后台管理中心</title>
<link rel="stylesheet" href="css/pintuer.css"  type="text/css">
<link rel="stylesheet" href="css/admin.css"   type="text/css">
<script src="js/jquery.js"></script>
<!-- 当前时间 -->  
  <script type="text/javascript"> 
window.onload = function() {  
var show = document.getElementById("show");  
setInterval(function() {   
var time = new Date();   // 程序计时的月从0开始取值后+1   
var m = time.getMonth() + 1;   
var t = time.getFullYear() + "年" + m + "月"     
+ time.getDate() + "日       " + time.getHours() + ":"     
+ time.getMinutes() + ":" + time.getSeconds();   
show.innerHTML = t;  
}, 1000); 
};
</script>
</head>

<body style="background-color:#f2f9fd;">
 
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
	     <c:if test="${sessionScope.relo==1}"> <img src="images/${sessionScope.userInfo.photo}" class="radius-circle rotate-hover"
			width="50" height="50" alt="" />学生就业后台管理中心</c:if>
	     <c:if test="${sessionScope.relo==2}"> <img src="images/${sessionScope.teacher.photo}" class="radius-circle rotate-hover"
			width="50" height="50" alt="" />学生就业后台管理中心</c:if>
	     <c:if test="${sessionScope.relo==3}"> <img src="images/${sessionScope.graduateo.photo}" class="radius-circle rotate-hover"
			width="50" height="50" alt="" />学生就业中心</c:if>
			</h1>
		</div>

	</div><!-- 时间 、姓名、名字 -->
	<div  class ="show" id="showUser">
	     <div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现在时间是[</div>
	     <div id="show"  class ="show-c"></div>
	     <div>]</div>
	       <!--if 如果是超级管理员  -->
         <div>&nbsp;&nbsp;&nbsp;&nbsp;欢迎[</div>
         <c:if test="${sessionScope.relo==1}"><div class ="show-c">${sessionScope.userInfo.name}</div></c:if>
	     <c:if test="${sessionScope.relo==2}"><div class ="show-c">${sessionScope.teacher.name}</div></c:if>
	     <c:if test="${sessionScope.relo==3}"><div class ="show-c">${sessionScope.graduateo.name}</div></c:if>
	     <div>]登录学生就业后台管理中心</div>
	     <div>&nbsp;&nbsp;&nbsp;&nbsp;当前身份是[</div>
	     <div class ="show-c">
	     <c:if test="${sessionScope.relo==1}">超级管理员</c:if>
	     <c:if test="${sessionScope.relo==2}">教师</c:if>
	     <c:if test="${sessionScope.relo==3}">学生</c:if>
	     </div>
	     <div>]</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		                         <!--个人信息模块  -->
		<h2>
			<span class="icon-user"></span>
            <c:if test="${sessionScope.relo<4}">个人中心</c:if>
           
		</h2>
		<ul >
		   <c:if test="${sessionScope.relo==1}">
			<li><a href="userInfo/view?id=${sessionScope.userInfo.id}" target="right"><span
					class="icon-caret-right"></span>我的信息</a></li>
			<li><a href="userInfo/userInfopreUpdatepassword?id=${sessionScope.userInfo.id}" target="right"><span
					class="icon-caret-right"></span>修改密码</a></li>
			<li><a href="userInfo/preUpdate?id=${sessionScope.userInfo.id}" target="right"><span
					class="icon-caret-right"></span>修改我的信息</a></li>
		   </c:if>
		   <c:if test="${sessionScope.relo == 2}">
			<li><a href="teacher/view?id=${sessionScope.teacher.id}" target="right"><span
					class="icon-caret-right"></span>我的信息</a></li>
					<li><a href="teacher/teacherUpdatepassword?id=${sessionScope.teacher.id}" target="right"><span
					class="icon-caret-right"></span>修改密码</a></li>
					<li><a href="teacher/preUpdate?id=${sessionScope.teacher.id}" target="right"><span
					class="icon-caret-right"></span>修改我的信息</a></li>
		   </c:if>
		   <c:if test="${sessionScope.relo ==3 }">
			<li><a href="graduate/view?username=${sessionScope.graduateo.username}" target="right"><span
					class="icon-caret-right"></span>我的信息</a></li>
					<li><a href="graduate/graduateUpdatepassword?username=${sessionScope.graduateo.username}" target="right"><span
					class="icon-caret-right"></span>修改密码</a></li>
					<li><a href="graduate/preUpdate?username=${sessionScope.graduateo.username}&relo=${sessionScope.relo}" target="right"><span
					class="icon-caret-right"></span>修改我的信息</a></li>
		   </c:if>
		   <li><a href="loginController/logout" ><span
					class="icon-caret-right"></span>退出系统</a></li>
		</ul>
		
		                      <!--教师信息模块  -->
		<c:if test="${sessionScope.relo < 2}">
		<h2>
			<span class="icon-pencil-square-o"></span>
			 <c:if test="${sessionScope.relo<2}">教师管理</c:if>
		</h2>
		<ul>
			<li><a href="teacher/teacherfind" target="right"><span
					class="icon-caret-right"></span>教师中心</a></li>
		    <li><a href="view/Teacher/teacher_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加教师</a></li>	
		</ul>
		</c:if>
		                                  <!--毕业生信息模块  -->
	    <c:if test="${sessionScope.relo < 3}">
		<h2>
			<span class="icon-pencil-square-o"></span>
			 <c:if test="${sessionScope.relo<3}">学生管理</c:if>
		</h2>
		<ul>
			<li><a href="graduate/graduatefind" target="right"><span
					class="icon-caret-right"></span>学生中心</a></li>
			<li><a href="view/Graduate/graduate_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加学生</a></li>	
					
		</ul>
		</c:if>
		                                  <!--就业信息模块  -->
		<h2>
			<span class="icon-pencil-square-o"></span>
			<c:if test="${sessionScope.relo==3}">就业</c:if>
            <c:if test="${sessionScope.relo!=3}">就业管理</c:if>
			
		</h2>
		<ul>
			<li><a href="employment/employmentfind" target="right"><span
					class="icon-caret-right"></span>就业中心</a></li>
				<c:if test="${sessionScope.relo < 3}">	
				<li><a href="view/Employment/employment_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加就业</a></li>	
				</c:if>
		</ul>
                                           <!--公告模块  -->
		<h2>
			<span class="icon-pencil-square-o"></span>
			<c:if test="${sessionScope.relo==3}">公告</c:if>
            <c:if test="${sessionScope.relo!=3}">公告管理</c:if>
            
		</h2>
		<ul>
			
			<li><a href="news/newsfind" target="right"><span
					class="icon-caret-right"></span>公告</a></li>
			<li><a href="view/New/news_add.jsp" target="right"><span
					class="icon-caret-right"></span>添加公告</a></li>	
		</ul> 
                                       <!--反馈模块  -->
		<h2>
			<span class="icon-pencil-square-o"></span>
			<c:if test="${sessionScope.relo==3}">反馈</c:if>
            <c:if test="${sessionScope.relo!=3}">反馈管理</c:if>
			
		</h2>
		<ul>
			<li><a href="issue/issuefind" target="right"><span
					class="icon-caret-right"></span>反馈中心</a></li>
			<c:if test="${sessionScope.relo > 2}">		
			<li><a href="view/Issue/issue_add.jsp" target="right"><span
					class="icon-caret-right"></span>反馈问题</a></li>
			</c:if>
		</ul>
		
		
	</div>
	<!--列表属性-->
	<script type="text/javascript">
		$(function() {
			$(".leftnav h2").click(function() {
				$(this).next().slideToggle(200);
				$(this).toggleClass("on");
			})
			$(".leftnav ul li a").click(function() {
				$("#a_leader_txt").text($(this).text());
				$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
			})
		});
	</script>
    <!--style="overflow:hidden;把第大的div滚动条隐藏 
    iframe 是嵌套页面  -->
	<div  class="admin" >
	   
		<iframe scrolling="auto" rameborder="0" src="employment/employmentadmin"
			name="right" width="100%" height="100%"></iframe>
	    
	</div>

</body>
</html>