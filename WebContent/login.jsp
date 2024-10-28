<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>  
    <link rel="stylesheet" href="css/pintuer.css" type="text/css">
    <link rel="stylesheet" href="css/admin.css" type="text/css">
    <style type="text/css">
    	.err{
    		color: red;
    		font-size: 16px;
    		font-weight: bold;
    	}    
    </style>
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            <form action="loginController/login" method="post">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1><br></h1><h1>学生就业管理系统</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="username" placeholder="登录账号" data-validate="required:请输入用户名" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="password" placeholder="登录密码" data-validate="required:请输入密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                   	<c:if test="${result==1}">
                   		<span class="err">用户名错误</span>
                   	</c:if>	
                   	<c:if test="${result==2}">
                   		<span class="err">密码错误</span>
                   	</c:if>	
                </div>
                <div class="login1">
                <!-- <div class="login1-r">
                    <a href="regsistr.jsp">点击注册</a>
                    </div> -->
                   <!--  <div >
                    <a href="demo_list.jsp">忘记密码</a>
                    </div>  -->
                     <div class="login1-l">
                    <input type="radio" name="relo" value="3" checked>学生
                    <input type="radio" name="relo" value="2">教师
                    <input type="radio" name="relo" value="1">管理员
                 </div>
            </div>
                <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
           
           </div>
            </form>          
        </div>
    </div>
</div>

</body>
</html>