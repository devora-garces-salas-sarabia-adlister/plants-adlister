<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<nav class="navbar sticky-top bg-dark">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand text-primary" href="/ads">Plant-lister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <button> <a href="/ads">View all ads</a></button>
        <button> <a href="/ads/create">Create an Ad</a></button>
    </div>
    <h2>Ads created by, ${sessionScope.user.username}.</h2>
    <c:forEach var="ad" items="${ad}">
        <div class="col-md-6">
            <h2><a href="/ads/view?id=${ad.id}" >${ad.title}</a></h2>
            <p>${ad.description}</p>
        </div>
        <button>Edit</button>
        <a class="btn" href="/delete?id=${ad.id}">Delete</a>
    </c:forEach>
</body>
</html>
