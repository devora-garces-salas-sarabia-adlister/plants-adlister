<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/headerProfile.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/profilenavbar.jsp" />
<img src="/img/tree-bg.jpg" id="background-imgs">
<div class="d-flex justify-content-center align-items-center">
    <div class="my-3">
            <h1 class="text-orange">Welcome, ${sessionScope.user.username}!</h1>
        <div class="d-flex justify-content-center align-items-center">
            <button class="btn btn-secondary btn-block submit text-light me-2 btn-outline-light"> <a href="/ads" class="text-light text-decoration-none">View all ads</a></button>
            <button class="btn btn-secondary btn-block submit text-light btn-outline-light"> <a href="/ads/create" class="text-light text-decoration-none">Create an Ad</a></button>
        </div>
    </div>
</div>
    <div class="container4">
            <c:forEach var="ad" items="${ad}">
                <div class="container3">
                    <div class="container2">
                            <h5 class=""><a href="/ads/view?id=${ad.id}" >${ad.title}</a></h5>
                            <p class="">${ad.description}</p>
                            <button class="btn btn-secondary btn-block submit btn-outline-light"><a href="/delete?id=${ad.id}" class="text-light text-decoration-none">Delete</a></button>
                            <button class="btn btn-secondary btn-block submit btn-outline-light"><a href="/updateAd?id=${ad.id}" class="text-light text-decoration-none">Edit</a></button>
                    </div>
                </div>
            </c:forEach>
    </div>
</body>
</html>
