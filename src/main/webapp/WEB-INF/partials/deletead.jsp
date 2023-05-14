<%--
  Created by IntelliJ IDEA.
  User: danielasalas
  Date: 5/10/23
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search" />
    </jsp:include>
    <link rel="stylesheet" href="/css/showAd.css">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand text" href="/ads">Plantlister</a>
        </div>
        <button class="btn"><a href="/profile" class="text">Back to Profile</a></button>
        <button class="btn"><a href="/logout" class="text">Logout</a></button>
    </div>
</nav>
<h1>Ad was deleted</h1>
</body>
</html>
