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
    
    <title>学生列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/table.css" type="text/css">
  </head>
  
   <script type="text/javascript">
	function upPage() {
		var nowPage = '${page}';
		if (nowPage < 2) {
			nowPage == 1;
		} else {
			nowPage = nowPage - 1;
		}
		self.location.href = "graduate/graduatefind?page=" + nowPage;
	}
 
	function downPage() {
		var nowPage = '${page}';
		var pageCount = '${pages}';
		if (nowPage >= pageCount) {
			nowPage = pageCount;
		} else {
			nowPage = parseInt(nowPage) + 1;
		}
		self.location.href = "graduate/graduatefind?page=" + nowPage;
	}
</script>
  
  
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">学生列表</div>
    <div class="panel-body">
        <form  class="navbar-form navbar-left" action="graduate/list" method="post">
            <div class="form-group" >
               <table class=table1_1 style="text-align:center;margin-left: 55px">
              <tr>
	           <td >姓名：</td>    <td><input type="text" name="name" class="form-control" placeholder="要查找学生名字(模糊查询)" /></td>
	           <td >院系：</td>    <td><input type="text" name="university" class="form-control" placeholder="要查找的院系(XXX学院)" /></td>
	           <td >生源地：</td>    <td> <input type="text" name="source" class="form-control" placeholder="要查找生源地(省份就可以)"style=" width:100%;" /></td>
	           <td >学号：</td>    <td> <input type="text" name="username" class="form-control" placeholder="要查找学号(精准查询)"  /></td>
               <td >毕业年份：</td>    <td> 
               <select name="graduateyear"class="form-control">
               <option  value=""  disabled selected hidden>请选择年份</option>
               <option  value="未毕业">未毕业</option>
               <option  value="2019年">2019年</option>
               <option  value="2018年">2018年</option>
               <option  value="2017年">2017年</option>
               <option  value="2016年">2016年</option>
               <option  value="2015年">2015年</option>
               <option  value="2014年">2014年</option>
               <option  value="2013年">2013年</option>
               <option  value="2012年">2012年</option>
               <option  value="2011年">2011年</option>
               <option  value="2010年">2010年</option>
               <option  value="2009年">2009年</option>
               <option  value="2008年">2008年</option>
               <option  value="2007年">2007年</option>
               <option  value="2006年">2006年</option>
               <option  value="2005年">2005年</option>
               <option  value="2004年">2004年</option>
               <option  value="2003年">2003年</option>
               <option  value="2002年">2002年</option>
               <option  value="2001年">2001年</option>
               <option  value="2000年">2000年</option>
               </select>
               </td>
              </tr>
              <tr>
              <td >学历：</td>    <td > 
               <select name="description" class="form-control" style=" width:100%;">
               <option  value=""  disabled selected hidden>请选择学历</option>
               <option  value="0">本科</option>
               <option  value="1">专科</option>
               <option  value="2">硕士</option>
               <option  value="3">博士</option>
               </select>
               </td>
                <td >就业情况：</td>    <td> 
               <select name="status" class="form-control" style=" width:100%;">
               <option  value=""  disabled selected hidden>请选择就业情况</option>
               <option  value="0">就业</option>
               <option  value="1">待业</option>
               </select>
               </td>
              <td>时间：</td>   <td  colspan="2">从&nbsp;<input type="date" name="startDate" class="form-control">&nbsp;到&nbsp;<input type="date" name="endDate" class="form-control"> </td>
	           <td ><button class="btn btn-success">查询</button>
                <c:if test="${sessionScope.relo < 3}">
                <button type="button" class="btn btn-success" onclick="location.href='view/Graduate/graduate_add.jsp'">新增</button>
                </c:if>
                <a href="graduate/graduatefind" class="btn btn-success ">重置</a></td>
               
             </tr>
            </table>
            </div>
        </form>
    </div>
</div>

<div  style="width: 100% ;height:520px;" >

<table class="table table-bordered table-striped table-hover" style="text-align:center;">
    <tr>
        <th width="3%" class="label-info">序号</th>
         <th class="label-info">学号</th>
        <th width="7%" class="label-info">姓名</th>
        <th class="label-info">院系</th>
        <th width="10%" class="label-info">生源地</th>
        <th class="label-info">学历</th>
        <th class="label-info">照片</th>
        <th class="label-info">就业情况</th>
         <th class="label-info">毕业年份</th>
        <c:if test="${sessionScope.relo < 3}">
        <th class="label-info">时间</th>
        <th class="label-info">操作</th>
        </c:if>
    </tr>
   <!--  items需要遍历的数据:用el表达式取controller中放入model中的数据(key) -->
   <!-- var="x" x就是遍历一次取出的对象名 -->
   <c:if test="${result==1}">
       <script>alert("查询错误,输入值为空,请从试！！！！！！");
       window.location='graduate/graduatefind' ; 
       </script>
      
    </c:if> 
    	
    <c:if test="${result==2}">
       <script>alert("没有查询到内容,重新查询或者联系管理员是否有该数据");
       window.location='graduate/graduatefind' ; 
       </script>
      
    </c:if>	
    <c:forEach items="${list}" var="u" varStatus="status">
    	
    	<tr>
    		<!-- status.count显示遍历的是第几条 -->
	    	<td>${status.count}</td>
	    	<!-- 用el表达式，对象名.属性名来直接显示 -->
	    	<td>${u.username}</td>
	    	<td><a href="graduate/view?username=${u.username}">${u.name}</a></td>
	    	<td>${u.university}</td>
	    	<td>${u.source}</td>
	    	
	    	<td>
	    	    <c:if test="${u.description==0}">本科</c:if>
	    		<c:if test="${u.description==1}">专科</c:if>
	    		<c:if test="${u.description==2}">硕士</c:if>
	    		<c:if test="${u.description==3}">博士</c:if>
	    	</td>
	    	<td>
	    	<c:if test="${u.photo!=null && u.photo!=''}">
	    			<img src="images/${u.photo}" width="25" height="25"/>
	    		</c:if>
	    		<c:if test="${u.photo==null || u.photo==''}">
	    			<img src="images/mytp.jpg" width="25" height="25"/>
	    		</c:if>
	    	</td>
	    	<td>
	    		<!-- if标签 test中的内容就是条件判断语句(用el表达式) -->
	    		<c:if test="${u.status==0}">就业</c:if>
	    		<c:if test="${u.status==1}">待业</c:if>
	    	</td> 
	    	<td>${u.graduateyear}</td>
	    	<c:if test="${sessionScope.relo < 3}">
	    	<td>${u.addDate}</td>
	    	<td><a href="graduate/preUpdate?username=${u.username}" class="btn btn-success btn-sm">修改</a>
	    	<c:if test="${sessionScope.relo ==1}">
	    	&nbsp;<a href="graduate/del?username=${u.username}" class="btn btn-danger btn-sm">删除</a>
	    	</c:if>
	    	</td>
    	    </c:if>
    	</tr>
    
    </c:forEach>
     
</table>
</div>
  <c:if test="${ab==1}">
    <div   style="text-align:center;font-size:17px; ">
    <span><a href="graduate/graduatefind?page=1">首页</a></span>
	<span><a href="javascript:upPage();">上一页</a></span>
	<span>第${page} 页</span>/
	<span>共${pages} 页</span> 
	 <span><a href="javascript:downPage();">下一页</a></span> 
	<span><a href="graduate/graduatefind?page=${pages} ">尾页</a></span> 
	</div>
    </c:if>
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
