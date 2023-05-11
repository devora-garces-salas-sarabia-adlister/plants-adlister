<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/profilenavbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <button> <a href="/ads">View all ads</a></button>
        <button> <a href="/ads/create">Create an Ad</a></button>
    </div>

<div class="card" style="width: 18rem;">
    <div class="card-body">
        <c:forEach var="ad" items="${ad}">
            <div class="col-md-6">
                <h5 class="card-title"><a href="/ads/view?id=${ad.id}" >${ad.title}</a></h5>
                <p class="card-text">${ad.description}</p>
                <button><a class="btn" href="/delete?id=${ad.id}">Delete</a></button>
                <button><a class="btn" href="/updateAd?id=${ad.id}">Edit</a></button>
            </div>

        </c:forEach>






<%--        <h5 class="card-title">Card title</h5>--%>
<%--        <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>--%>
<%--        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>--%>
<%--        <a href="#" class="card-link">Card link</a>--%>
<%--        <a href="#" class="card-link">Another link</a>--%>
    </div>
</div>
<%--    <h2>Ads created by, ${sessionScope.user.username}.</h2>--%>
<%--    <c:forEach var="ad" items="${ad}">--%>
<%--        <div class="col-md-6">--%>
<%--            <h2><a href="/ads/view?id=${ad.id}" >${ad.title}</a></h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--        </div>--%>
<%--        <button>Edit</button>--%>
<%--        <a class="btn" href="/delete?id=${ad.id}">Delete</a>--%>
<%--    </c:forEach>--%>
</body>
</html>
