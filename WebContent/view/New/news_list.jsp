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
    
    <title>公告列表</title>
    
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
		self.location.href = "news/newsfind?page=" + nowPage;
	}
 
	function downPage() {
		var nowPage = '${page}';
		var pageCount = '${pages}';
		if (nowPage >= pageCount) {
			nowPage = pageCount;
		} else {
			nowPage = parseInt(nowPage) + 1;
		}
		self.location.href = "news/newsfind?page=" + nowPage;
	}
</script>
  <body>
  <div class="panel panel-info">
    <div class="panel-heading">公告列表</div>
    <div class="panel-body">
        <form  class="navbar-form navbar-left" action="news/list" method="post">
            <div class="form-group">
            <table class=table1_1 style="text-align:center;margin-left: 100px">
              <tr>
	           <td >标题：</td>    <td><input type="text" name="title" class="form-control" placeholder="要查找标题(模糊查询)" style=" width:100%;"/></td>
	           <td >内容：</td>    <td> <input type="text" name="content" class="form-control" placeholder="要查找内容(模糊查询)"style=" width:100%;" /></td>
	           <td >分类：</td>     <td><select name="classify"class="form-control">
               <option  value=""  disabled selected hidden>请选择分类</option>
               <option  value="招聘">招聘</option>
               <option  value="失物招领">失物招领</option>
               <option  value="校内新闻">校内新闻</option>
               <option  value="校内公告">校内公告</option>
               </select>
               </td>
              <td>反馈时间：</td>   <td  colspan="2">从&nbsp;<input type="date" name="startDate" class="form-control">&nbsp;到&nbsp;<input type="date" name="endDate" class="form-control"> </td>
	           <td ><button class="btn btn-success">查询</button>
                <c:if test="${sessionScope.relo < 3}">
                <button type="button" class="btn btn-success" onclick="location.href='view/New/news_add.jsp'">新增</button>
                </c:if>
                <a href="news/newsfind" class="btn btn-success ">重置</a></td>
             </tr>
            </table>
            </div>
        </form>
    </div>
</div>
<div  style="width: 100% ;height:550px;" >
      <table class="table table-bordered table-striped table-hover" style="text-align:center;vertical-align:middle;">
    <tr>
        <th  width="5%"class="label-info">序号</th>
        <th  class="label-info">照片</th>
        <th  width="8%" class="label-info">类别</th>
        <th width="13%" class="label-info">标题</th>
        <th width="50%" class="label-info">内容</th>
        <th class="label-info">时间</th>
        <c:if test="${sessionScope.relo < 3}">
        <th width="10%"class="label-info">操作</th>
        </c:if>
    </tr>
   <!--  items需要遍历的数据:用el表达式取controller中放入model中的数据(key) -->
   <!-- var="x" x就是遍历一次取出的对象名 -->
   
    <c:if test="${result==1}">
       <script>alert("查询错误,输入值为空,请从试！！！！！！");
       window.location='news/newsfind' ; 
       </script>
      
    </c:if> 
    	
    <c:if test="${result==2}">
       <script>alert("没有查询到内容,重新查询或者联系管理员是否有该数据");
       window.location='news/newsfind' ; 
       </script>
      
    </c:if>	
   
   
   
  	<c:forEach items="${list}" var="n" varStatus="status">
  		<tr>
  			<td>${status.count}</td>
  			<td><c:if test="${n.photo!=null && n.photo!=''}">
	    			<img src="images/${n.photo}" width="70" height="70"/>
	    		</c:if>
	    		<c:if test="${n.photo==null || n.photo==''}">
	    			<img src="images/mytp.jpg" width="70" height="70"/>
	    		</c:if></td>
	    	<td >${n.classify}</td>
  			<td style="text-align:left;"><a href="news/view?id=${n.id}">${n.title}</a></td>
  			<td style="text-align:left;">${n.content}</td>
  			<td>${n.add_date}</td>
  			 <c:if test="${sessionScope.relo < 3}">
  			<td><a href="news/preUpdate?id=${n.id}" class="btn btn-success btn-sm">修改</a>&nbsp;<a href="news/del?id=${n.id}" class="btn btn-danger btn-sm">删除</a></td>
  		</c:if>
  		</tr>
  	</c:forEach>
     
</table>
</div>
<div>
<c:if test="${ab==1}">
    <div   style="text-align:center;font-size:17px; ">
    <span><a href="news/newsfind?page=1">首页</a></span>
	<span><a href="javascript:upPage();">上一页</a></span>
	<span>第${page} 页</span>/
	<span>共${pages} 页</span> 
	 <span><a href="javascript:downPage();">下一页</a></span> 
	<span><a href="news/newsfind?page=${pages} ">尾页</a></span> 
	</div>
    </c:if>
    </div>
  </body>
</html>
