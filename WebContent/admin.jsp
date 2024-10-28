<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>背景</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
     <script src="https://cdn.bootcss.com/echarts/4.3.0-rc.2/echarts.js"></script>

  </head>
  
  <body>
    <div id="main" style="width: 1700px;height:750px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

       var  option = {
    		    title : {
    		        text: '学生就业省份排名前六',
    		        x:'center'
    		    },
    		    tooltip : {
    		        trigger: 'item',
    		        formatter: "{a} <br/>{b} : {c} ({d}%)"
    		    },
    		    legend: {
    		        orient: 'vertical',
    		        left: 'left',
    		        data: ['${employment1[0].address}','${employment1[1].address}','${employment1[2].address}','${employment1[3].address}','${employment1[4].address}','${employment1[5].address}']
    		    },
    		    series : [
    		        {
    		            name: '省份',
    		            type: 'pie',
    		            radius : '55%',
    		            center: ['50%', '60%'],
    		            data:[
    		                {value:${employment1[0].count}, name:'${employment1[0].address}'},
    		                {value:${employment1[1].count}, name:'${employment1[1].address}'},
    		                {value:${employment1[2].count}, name:'${employment1[2].address}'},
    		                {value:${employment1[3].count}, name:'${employment1[3].address}'},
    		                {value:${employment1[4].count}, name:'${employment1[4].address}'},
    		                {value:${employment1[5].count}, name:'${employment1[5].address}'}
    		            ],
    		            itemStyle: {
    		                emphasis: {
    		                    shadowBlur: 10,
    		                    shadowOffsetX: 0,
    		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
    		                }
    		            }
    		        }
    		    ]
    		};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
  </body>
</html>
