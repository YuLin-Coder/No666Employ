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
    
    <title>教师列表</title>
    
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
		self.location.href = "teacher/teacherfind?page=" + nowPage;
	}
 
	function downPage() {
		var nowPage = '${page}';
		var pageCount = '${pages}';
		if (nowPage >= pageCount) {
			nowPage = pageCount;
		} else {
			nowPage = parseInt(nowPage) + 1;
		}
		self.location.href = "teacher/teacherfind?page=" + nowPage;
	}
</script>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">教师列表</div>
    <div class="panel-body">
        <form  class="navbar-form navbar-left" action="teacher/list" method="post">
            <div class="form-group">
            <table class=table1_1 style="text-align:center;margin-left: 350px">
              <tr>
	           <td >姓名：</td>    <td><input type="text" name="name" class="form-control" placeholder="要查找教师名字(模糊查询)" style=" width:100%;"/></td>
              <td>时间：</td>   <td  colspan="2">从&nbsp;<input type="date" name="startDate" class="form-control">&nbsp;到&nbsp;<input type="date" name="endDate" class="form-control"> </td>
	           <td ><button class="btn btn-success">查询</button>
                <button type="button" class="btn btn-success" onclick="location.href='view/Teacher/teacher_add.jsp'">新增</button>
                <a href="teacher/teacherfind" class="btn btn-success ">重置</a></td>
             </tr>
            </table>
            </div>
        </form>
    </div>
</div>

<div  style="width: 100% ;height:520px;" >

<table class="table table-bordered table-striped table-hover" style="text-align:center;">
    <tr>
        <th  width="5%" width="3%" class="label-info">序号</th>
        <th width="10%" class="label-info">教师名字</th>
        <th class="label-info">电话</th>
        <th  width="10%"class="label-info">性别</th>
        <th class="label-info">照片</th>
        <th class="label-info">添加时间</th>
        <th class="label-info">操作</th>
    </tr>
   <!--  items需要遍历的数据:用el表达式取controller中放入model中的数据(key) -->
   <!-- var="x" x就是遍历一次取出的对象名 -->
   <c:if test="${result==1}">
       <script>alert("查询错误,输入值为空,请从试！！！！！！");
       window.location='teacher/teacherfind' ; 
       </script>
      
    </c:if>	
     <c:if test="${result==2}">
       <script>alert("没有查询到内容,重新查询或者联系管理员是否有该数据");
       window.location='teacher/teacherfind' ; 
       </script>
      
    </c:if>
  	<c:forEach items="${list}" var="t" varStatus="status">
  		<tr>
  			<td>${status.count}</td>
  			<td><a href="teacher/view?id=${t.id}">${t.name}</a></td>
  			<td>${t.tel}</td>
	    	<td>
	    		<!-- if标签 test中的内容就是条件判断语句(用el表达式) -->
	    		<c:if test="${t.sex==0}">男</c:if>
	    		<c:if test="${t.sex==1}">女</c:if>
	    	</td>
  			<td>
	    	<c:if test="${t.photo!=null && t.photo!=''}">
	    		<img src="images/${t.photo}" width="25" height="25"/>
	    	</c:if>
	    	<c:if test="${t.photo==null || t.photo==''}">
	    			<img src="images/mytp.jpg" width="25" height="25"/>
	    	</c:if>
	    	</td>
  			<td>${t.add_date}</td>
  			<td><a href="teacher/preUpdate?id=${t.id}" class="btn btn-success btn-sm">修改</a>&nbsp;<a href="teacher/del?id=${t.id}" class="btn btn-danger btn-sm">删除</a></td> 					
  		</tr>
  	</c:forEach>
     
</table>
 </div>
    
    <c:if test="${ab==1}">
    <div   style="text-align:center;font-size:17px; ">
    <span><a href="employment/employmentfind?page=1">首页</a></span>
	<span><a href="javascript:upPage();">上一页</a></span>
	<span>第${page} 页</span>/
	<span>共${pages} 页</span> 
	 <span><a href="javascript:downPage();">下一页</a></span> 
	<span><a href="employment/employmentfind?page=${pages} ">尾页</a></span> 
	</div>
    </c:if>

</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
