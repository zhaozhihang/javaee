<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-26
  Time: 下午3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
</head>
<body>
<h2>include命令</h2>
<%@include file="hello.html"%>
<%
    out.println("欢迎进入JSP的世界");
%>
</body>
</html>
