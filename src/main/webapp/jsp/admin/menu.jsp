<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统菜单</title>
	<link rel="stylesheet" href="themes/base/jquery.ui.all.css">
	<script src="js/jquery-1.8.2.js"></script>
	<script src="ui/jquery.ui.core.js"></script>
	<script src="ui/jquery.ui.widget.js"></script>
	<script src="ui/jquery.ui.accordion.js"></script>
<script>
	$(function() {
		$( "#accordion" ).accordion({ fillSpace: true});
	});
	</script>
</head>
<body>
<div id="accordion" >
	<h3>订单管理</h3>
	<div>
	<a href="order/outstandingList" target="main" >待处理订单</a>
	</div>
	<h3>酒店管理</h3>
	<div >
		<p>
		s
		</p>
	</div>
	<h3>用户管理</h3>
	<div>
		<p>
		
		</p>
	</div>
	<h3>Section 4</h3>
	<div>
		
	</div>
</div>
</body>
</html>






