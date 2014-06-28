<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-26
  Time: 下午4:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP+JDBC 留言管理程序——登陆</title>
</head>
<body>
<center>
    <h1>
        留言管理范例 —— JSP + JDBC实现
    </h1>
    <hr/>
    <br/>
    <%
        if (session.getAttribute("name") != null) {

    %>
    <h2>登陆成功</h2>

    <h2>欢迎<font color="red" size="12">
        <%=session.getAttribute("name")%>
    </font>光临MLDN留言程序</h2>

    <h3><a href="list_notes.jsp">进入留言管理页面</a></h3>
    <%
        } else {
            response.setHeader("refresh","2;URL=login.jsp");
    %>
        您还未登陆，请先登陆！！！ <br/>
        两秒后自动跳转到登陆程序窗口！！！ <br/>
        如果没有跳转，请按 <a href="login.jsp">这里</a>！！！ <br/>
    <%
        }
    %>
</center>

</body>
</html>
