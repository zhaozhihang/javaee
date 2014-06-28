<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-24
  Time: 下午10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    java.text.SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    java.util.Date currentTime = new Date();
    String time = simpleDateFormat.format(currentTime).toString();
%>
您的操作系统和浏览器：
<%=request.getHeader("User-Agent")%><br/>
当前时间：<%=time%><br/>
当前ip：<%=request.getRemoteUser()%><br/>
当前ip：<%=request.getRemoteAddr()%><br/>


</body>
</html>
