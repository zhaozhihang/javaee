<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-26
  Time: 下午4:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP+JDBC 留言管理程序——登陆</title>
</head>
<body>
<center>
    <h1>留言管理范例 —— JSP + JDBC实现</h1>
    <hr/>
    <br/>
    <%
        if (request.getAttribute("err") != null) {
    %>
    <h2><%=request.getAttribute("err")%>
    </h2>
    <%
        }
    %>
    <form action="login_conf.jsp" method="post">
        <table style="width: 80%">
            <tr>
                <td colspan="2">用户登陆</td>
            </tr>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="id"/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="登陆"/>
                    <input type="reset" value="重置"/>
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
