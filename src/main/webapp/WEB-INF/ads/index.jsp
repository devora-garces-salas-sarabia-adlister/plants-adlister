<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>

<jsp:include page="/WEB-INF/partials/indexNavbar.jsp" />
<img src="/img/smallpurple.jpg" id="background-imgs">
<h1>Here Are All The Plants!</h1>
<div class="container4">
    <c:forEach var="ad" items="${ads}">
        <div class="container3">
            <div class="container2">
             <h2 class="card-title mb-2"><a href="/ads/view?id=${ad.id}" class="text-decoration-none headerColor">${ad.title}</a></h2>
             <p class="card-text">${ad.description}</p>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
