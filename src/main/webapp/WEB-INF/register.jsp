<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
    <link rel="stylesheet" href="/css/register.css">
</head>
<body>
    <jsp:include page="partials/registerNavbar.jsp" />
    <img src="/img/white-tree.jpg" id="background-img-register">
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input id="username" value="<c:out value="${usernameInput}"></c:out>" name="username" class="form-control" type="text" required>
                <span>${usernameError}</span>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input id="email" name="email" value="<c:out value="${emailInput}"></c:out>" class="form-control" type="text" required>
                <span>${emailError}</span>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input id="password" name="password" class="form-control" type="password" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password:</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password" required>
            </div>
            <p>${passwordError}</p>
            <input type="submit" class="btn btn-block btn-color">
        </form>
    </div>
</body>
</html>
