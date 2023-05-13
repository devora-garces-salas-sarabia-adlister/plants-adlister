<%--
  Created by IntelliJ IDEA.
  User: jennaelisedevora
  Date: 5/11/23
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Profile Information</title>
</head>
<body>
<div class="container">
    <h1>Please fill in your information.</h1>
    <form action="/updateProfile" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${user.email}" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" value="${user.password}" required>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password" type="hidden" value="${user.password}" required>
        </div>
        <input value="${user.id}" type="hidden" name="id">
        <input type="submit" class="btn btn-primary btn-block">
        <button><a class="btn" href="/deleteUser?username=${user.username}">Delete</a></button>
        <button><a class="btn" href="/profile">Cancel</a></button>
    </form>
</div>
</body>
</html>
