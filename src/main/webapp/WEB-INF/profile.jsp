<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/profileNavbar.jsp" />
<img src="/img/tree-bg.jpg" id="background-imgs">
<div class="d-flex justify-content-center align-items-center">
    <div class="my-3">
            <h1 class="text-orange">Welcome, ${sessionScope.user.username}!</h1>
        <div class="d-flex justify-content-center align-items-center">
            <button class="btn btn-secondary btn-block submit me-2 btn-outline-light"> <a href="/ads" class="text-reset text-decoration-none">View all ads</a></button>
            <button class="btn btn-secondary btn-block submit btn-outline-light"> <a href="/ads/create" class="text-reset text-decoration-none">Create an Ad</a></button>
        </div>
    </div>
</div>
    <div class="container4">
            <c:forEach var="ad" items="${ad}">
                <div class="container3">
                    <div class="container2">
                            <h2 class=""><a href="/ads/view?id=${ad.id}" class="text-decoration-none headerColor" >${ad.title}</a></h2>
                            <p class="">${ad.description}</p>
                            <button class="btn btn-secondary btn-block submit btn-text btn-outline-light"><a href="/delete?id=${ad.id}" class="text-reset text-decoration-none">Delete</a></button>
                            <button class="btn btn-secondary btn-block submit btn-text btn-outline-light"><a href="/updateAd?id=${ad.id}" class="text-reset text-decoration-none">Edit</a></button>
                    </div>
                </div>
            </c:forEach>
    </div>
</body>
</html>
