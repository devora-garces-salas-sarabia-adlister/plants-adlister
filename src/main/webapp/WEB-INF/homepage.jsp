<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head2.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pathway+Extreme:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<video id="background-video" autoplay loop muted >
  <source src="/videos/homepage-bg.mp4" type="video/mp4">
</video>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <div class="row">
            <h1 class="col-12 welcome-header">Welcome to the Plantlister!</h1>
            <div class="d-flex justify-content-center">
            <button class="col-4 me-2 btn-yellow"><a href="/login">Login</a></button>
            <button class="col-4 btn-yellow"><a href="/register">Sign-up</a></button>
            </div>
        </div>
    </div>
</body>
</html>
