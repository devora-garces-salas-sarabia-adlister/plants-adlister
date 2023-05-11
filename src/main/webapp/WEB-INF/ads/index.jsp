<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/indexNavbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>
    <c:forEach var="ad" items="${ads}">
    <div class="card" style="width: 18rem;">
        <div class="card-body">
            <div class="col-md-6">
             <h5 class="card-title"><a href="/ads/view?id=${ad.id}" >${ad.title}</a></h5>
             <p class="card-text">${ad.description}</p>
            </div>
        </div>
    </div>
    </c:forEach>
</body>
</html>
