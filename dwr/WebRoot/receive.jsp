<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'receive.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="dwr/util.js"></script>
<script type="text/javascript" src="dwr/engine.js"></script>
<script type="text/javascript" src="dwr/interface/messagePush.js"></script>
<script>
	//这个方法用来启动该页面的ReverseAjax功能 
	dwr.engine.setActiveReverseAjax(true);
	//设置在页面关闭时，通知服务端销毁会话 
	dwr.engine.setNotifyServerOnPageUnload(true);
	//这个函数是提供给后台推送的时候 调用的

	function showMessage(content) {
		$('#getMessage').append(content);
	};
</script>
</head>

<body>
	<div id="getMessage" style="padding: 100px; border: 1px solid #F00;">
		<ul></ul>
	</div>
</body>
</html>