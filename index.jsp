<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 
<%
    HelloWorld h = new HelloWorld();
%>
<!-- <html>
<body>
    메시지는 = <%=h.hello() %> 입니다.
</body>	
</html> -->

<html>    
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>    <%-- JSP 주석처리 --%>
        <nav class="navbar navbar-expand navbar-dark bg-dark">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navber-header" href="./index.jps">Home</a>
                    </div>
            </div>
    </nav>
    <%-- CLASS는 스타일 적용시에 사용되는 이름, 중첩 가능 --%>
<%! string greeting = Welcome tto Web Shopping Mall:;
    String tagline = "Welcome to Web Market!"%>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="display-3">
                            <%=greeting%>
                    </h1>
                </div>
    </div>
    <div class="container">
        <div class="text-center">
                    <h3>
                                    <%=tagline%>
                    </h3>
        </div>
        <hr>
    </div>
    <footer class="container">
        <p>&copy; WebMarket</p>
    </footer>
    </body>
</html>
