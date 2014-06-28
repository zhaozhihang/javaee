<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script>
        /*
         ajax步骤：
         1.获取a节点，并为其添加onclick函数
         2.创建一个XMLHttpRequest对象
         3.准备发送请求的数据：url
         4.调用XMLHttpRequest对象的open方法
         5.调用XMLHttpRequest对象的send方法
         6.为XMLHttpRequest对象添加onreadystatechange响应函数
         7.判断响应是否完成：XMLHttpRequest对象的readyState属性值为4的时候
         8.再判断是否可用，XMLHttpRequest对象status属性值为200
         9.打印响应结果：responseText
         */
        window.onload = function () {
            document.getElementsByTagName("a")[0].onclick = function () {
                var request = null;
                request = new XMLHttpRequest();
                var url = this.href + "?time=" + new Date();
                var method = "GET";
                request.open(method, url);
                request.send(null);
                request.onreadystatechange = function () {
                    if (request.readyState == 4) {
                        if (request.status == 200 || request.status == 304) {
                            alert(request.responseText);
                        }
                    }
                };
                return false;
            };
        };
    </script>
</head>
<body>
<a href="helloAjax.txt">hello AJAX</a>
</body>
</html>