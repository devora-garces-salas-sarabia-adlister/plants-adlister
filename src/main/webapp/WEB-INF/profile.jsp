<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="/css/profile.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/profileNavbar.jsp" />

    <div class="">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <button class="btn"> <a href="/ads">View all ads</a></button>
        <button class="btn"> <a href="/ads/create">Create an Ad</a></button>
    </div>
    <div class="container4">
            <c:forEach var="ad" items="${ad}">
                <div class="container3">
                    <div class="container2">
                            <h5 class=""><a href="/ads/view?id=${ad.id}" >${ad.title}</a></h5>
                            <p class="">${ad.description}</p>
                            <button class="btn btn-style"><a class="" href="/delete?id=${ad.id}">Delete</a></button>
                            <button class="btn btn-style"><a class="" href="/updateAd?id=${ad.id}">Edit</a></button>
                    </div>
                </div>
            </c:forEach>
    </div>
</body>
</html>
