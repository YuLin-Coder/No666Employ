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
    
    <title>反馈信息列表</title>
    
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
		self.location.href = "issue/issuefind?page=" + nowPage;
	}
 
	function downPage() {
		var nowPage = '${page}';
		var pageCount = '${pages}';
		if (nowPage >= pageCount) {
			nowPage = pageCount;
		} else {
			nowPage = parseInt(nowPage) + 1;
		}
		self.location.href = "issue/issuefind?page=" + nowPage;
	}
</script>
<body>
<div class="panel panel-info">
    <div class="panel-heading">反馈信息列表</div>
    <div class="panel-body">
        <form  class="navbar-form navbar-left" action="issue/list" method="post">
            <div class="form-group">
            <table class=table1_1 style="text-align:center;margin-left: 25px">
              <tr>
	           <td >反馈者姓名：</td>    <td><input type="text" name="questions" class="form-control" placeholder="要查找学生名字(模糊查询)" style=" width:100%;"/></td>
	           <td >反馈内容：</td>    <td> <input type="text" name="qcontent" class="form-control" placeholder="要查找反馈内容(模糊查询)"style=" width:100%;" /></td>
	           <td >反馈者学号：</td>    <td> <input type="text" name="username" class="form-control" placeholder="要查找学号(精准查询)"  /></td>
              
              <td>反馈时间：</td>   <td  colspan="2">从&nbsp;<input type="date" name="startDate" class="form-control">&nbsp;到&nbsp;<input type="date" name="endDate" class="form-control"> </td>
	           <td ><button class="btn btn-success">查询</button>
                <a href="issue/issuefind" class="btn btn-success ">重置</a></td>
             </tr>
            </table>
            </div>
        </form>
    </div>
</div>
<c:if test="${sessionScope.relo != 3}">
<div  style="width: 100% ;height:520px;" >
</c:if>
<c:if test="${sessionScope.relo == 3}">
<div  style="width: 100% ;height:450px;" >
</c:if>
<table class="table table-bordered table-striped table-hover" style="text-align:center;">
    <tr>
        <th width="3%" class="label-info">序号</th>
        <th class="label-info">反馈者学号</th>
        <th class="label-info">反馈者</th>
        <th width="20%"class="label-info">反馈内容</th>
        <th class="label-info">反馈时间</th>
        <th class="label-info">回复者</th>
        <th width="20%"class="label-info">回复内容</th>
        <th class="label-info">回复时间</th>
        <c:if test="${sessionScope.relo < 3}">
        <th class="label-info">操作</th>
        </c:if>
    </tr>
   <!--  items需要遍历的数据:用el表达式取controller中放入model中的数据(key) -->
   <!-- var="x" x就是遍历一次取出的对象名 -->
   
     <c:if test="${result==1}">
       <script>alert("查询错误,输入值为空,请从试！！！！！！");
       window.location='issue/issuefind' ; 
       </script>
      
    </c:if> 
    	
    <c:if test="${result==2}">
       <script>alert("没有查询到内容,重新查询或者联系管理员是否有该数据");
       window.location='issue/issuefind' ; 
       </script>
       </c:if>
   
    <c:forEach items="${list}" var="u" varStatus="status">
    	
    	<tr>
    		<!-- status.count显示遍历的是第几条 -->
	    	<td>${status.count}</td>
	    	<!-- 用el表达式，对象名.属性名来直接显示 -->
	    	<%-- <td><a href="graduate/view?id=${u.id}">${u.name}</a></td> --%>
	    	<td>${u.username}</td>
	    	<td>${u.questions}</td>
	    	<td>${u.qcontent}</td>
	    	<td>${u.qdate}</td>
	    	<%-- <td>${u.reply}</td> --%>
	    	<td>${u.replier}</td>
	    	<td>${u.rcontent}</td>
	    	<td>${u.rdate}</td>
	    <c:if test="${sessionScope.relo < 3}">
	    	<td>
	    	 
	    	    <!-- if标签 test中的内容就是条件判断语句(用el表达式) -->
	    		<c:if test="${u.reply==1}">
	    		<a href="issue/preUpdate?id=${u.id}" class="btn btn-success btn-sm">修改</a>
	    		</c:if>
	    		<c:if test="${u.reply==0}">
	    		<a href="issue/preUpdate?id=${u.id}" class="btn btn-success btn-sm">回复</a>
	    		</c:if>
	    		<c:if test="${sessionScope.relo ==1}">
	    	&nbsp;<a href="issue/del?id=${u.id}" class="btn btn-danger btn-sm">删除</a>
	    	</c:if>
	    	</td>
    	 </c:if>
    	</tr>
    </c:forEach>
     
</table>
</div>
<div>
<c:if test="${ab==1}">
    <div   style="text-align:center;font-size:17px; ">
    <span><a href="issue/issuefind?page=1">首页</a></span>
	<span><a href="javascript:upPage();">上一页</a></span>
	<span>第${page} 页</span>/
	<span>共${pages} 页</span> 
	 <span><a href="javascript:downPage();">下一页</a></span> 
	<span><a href="issue/issuefind?page=${pages} ">尾页</a></span> 
	</div>
    </c:if>
    </div>
</body>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

</html>
