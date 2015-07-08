<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="jquery-1.7.2.js"></script>
	<script src="jquery-1.7.2.min.js"></script>
	<script type= "text/javascript" src ="dwr/util.js"></script>     
     <script type="text/javascript" src= "dwr/engine.js"></script >   
     <script type="text/javascript" src= "dwr/interface/messagePush.js" ></script>  
	
	<script>
		//$('document').ready(function(){
		//	messagePush.sendMessage("你好");
		//});
		
		$('document').ready(function(){  
            $('#send').bind('click',function(){  
                var mess= $('#message').val();
                messagePush.sendMessage(mess);  
            });  
        });
	</script>
  </head>

  <body>
    <input type="text" id="message" size="20"/>  
    <input type="button" id ="send" value="send"/> 
  </body>
</html>