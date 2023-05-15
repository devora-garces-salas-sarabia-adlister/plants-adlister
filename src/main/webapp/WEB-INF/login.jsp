<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/loginnavbar.jsp"/>
<img src="/img/succulents.jpg" id="background-img">
<div class="container">
    <h1 class="title-font">Please Login</h1>
    <form action="/login" method="POST">
        <div class="form-group">
            <label class="title-font" for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label class="title-font" for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-secondary btn-block submit btn-outline-light" value="Login">
    </form>
</div>
</body>
</html>
