<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-26
  Time: 下午7:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com" %>
<%@ page import="com.handsome.ip.IPSeeker" %>
<%@ page import="java.io.File" %>
<%@ page import="com.handsome.ip.IPLocation" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String ip_str = request.getParameter("ip");
    IPSeeker ip = new IPSeeker("ipdata.Dat", getServletConfig().getServletContext().getRealPath("/") + File.separator + "ip");
    IPLocation local = ip.getIPLocation(ip_str);
//    获得地区
    String address = local.getCountry();
//    获得类型
    String type = local.getArea();
%>
<center>
    ip地址：<%=ip_str%>
    来自：<%=address%>
    类型：<%=type%>
</center>

</body>
</html>
