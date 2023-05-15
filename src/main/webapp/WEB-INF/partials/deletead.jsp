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
    <%@include file="deleteAdNavbar.jsp"%>
    <link rel="stylesheet" href="/css/deleteAd.css">
</head>
<body>

<img id="background-imgs" src="/img/catcus.jpg">
<div class="container4">
    <div class="container3">
        <div class="container2">
            <h5 class="card-title py-2 d-flex justify-content-center align-items-center">Your Ad Has Been Deleted</h5>

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</body>
</html>
