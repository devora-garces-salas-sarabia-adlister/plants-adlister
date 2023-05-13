<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/loginnavbar.jsp" />
    <img src="/img/succulents.jpg" id="background-img">
    <div class="card">
    <div class="container login-box">

        <h1>Please Login</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-secondary btn-block submit" value="Login">
        </form>
    </div>
    </div>
</body>
</html>
