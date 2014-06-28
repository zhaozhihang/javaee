<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-26
  Time: 下午3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp实例3</title>
</head>
<body style="text-align: center;color: red;font-size: 28">
    <%
        Date today = new Date();
        int hours = today.getHours();
        int minutes = today.getMinutes();
        if (hours >= 0 && hours <= 12) {
            out.println("早上好！");
        } else {
            out.println("下午好！");
        }
        String[] weekdays = {"日", "一", "二", "三", "四", "五", "六"};
        out.println("\n今天是" + (today.getYear() + 1900) + "年" + (today.getMonth() + 1) + "月" + (today.getDate()) + "日星期"+weekdays[today.getDay()]);
    %>
</body>
</html>
