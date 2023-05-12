<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<video id="background-video" autoplay loop muted >
  <source src="/videos/homepage-bg.mp4" type="video/mp4">
</video>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <div class="row">
            <h1 class="col-12 welcome-header">Welcome to the Plant-lister!</h1>
            <button class="col-6 btn btn-yellow"><a href="/login">Login</a></button>
            <button class="col-6 btn btn-yellow"><a href="/register">Sign-up</a></button>
        </div>
    </div>
</body>
</html>
