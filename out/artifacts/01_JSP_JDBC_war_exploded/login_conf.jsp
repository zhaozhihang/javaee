<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-26
  Time: 下午4:10
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
    <%!
        String DBDRIVER = "oracle.jdbc.driver.OracleDriver";
        String DBURL = "jdbc:oracle:thin:@localhost:1521:orcl";
        String DBUSER = "scott";
        String DBPASSWORD = "tiger";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
    %>
    <%
        boolean flag = false;
        //接收参数
        String id = request.getParameter("id");
        String password = request.getParameter("password");
    %>
    <%
        String sql = "select name from person where id=? password=?";

        try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            if (rs.next()) {
    //            用户合法
                flag = true;
    //            将用户保存在session中
                session.setAttribute("name", rs.getString(1));
            } else {
                request.setAttribute("err","错误的用户名及密码！");
            }
            rs.close();
            pstmt.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    %>
    <%
        if (flag) {
//            用户合法
    %>
    }
    <jsp:forward page="login_success.jsp"/>
    <%
        } else {
    %>
         <jsp:forward page="login.jsp"/>
    <%
        }
    %>
</center>

</body>
</html>
