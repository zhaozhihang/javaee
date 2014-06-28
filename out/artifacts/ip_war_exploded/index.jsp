<%@ page import="java.util.StringTokenizer" %>
<%@ page import="com.handsome.ip.IPSeeker" %>
<%@ page import="java.io.File" %>
<%@ page import="com.handsome.ip.IPLocation" %>
<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <%
      String agent = request.getHeader("user-agent");
      StringTokenizer st = new StringTokenizer(agent, ";");
      st.nextToken();
//      得到用户的浏览器名
      String user_browser = st.nextToken();
//      得到用户的操作系统名
      String user_os = st.nextToken();
      String ip_str = request.getHeader("x-forwarded-for");
      if (ip_str == null || ip_str.length() == 0 || "unknown".equalsIgnoreCase("ip_str")) {
          ip_str = request.getHeader("Proxy-Client-IP");
      }

      if (ip_str == null || ip_str.length() == 0 || "unknown".equalsIgnoreCase("ip_str")) {
          ip_str = request.getHeader("WL-Proxy-Client-IP");
      }

      if (ip_str == null || ip_str.length() == 0 || "unknown".equalsIgnoreCase("ip_str")) {
          ip_str = request.getRemoteAddr();
      }

      IPSeeker ip = new IPSeeker("ipdata.Dat", getServletConfig().getServletContext().getRealPath("/") + File.separator + "app");
      IPLocation local = ip.getIPLocation(ip_str);
//      获得地区
      String address = local.getCountry();
//      获得类型
      String type = local.getArea();
  %>
  <center>
      欢迎使用ip地址查看web应用 <br/><br/>
      <hr/>
      ip地址：<%=ip_str%> <br/>
      来自：<%=address%> <br/>
      类型：<%=type%> <br/>
      操作系统：<%=user_os%> <br/>
      浏览器：<%=user_browser%> <br/>
  </center>

  </body>
</html>