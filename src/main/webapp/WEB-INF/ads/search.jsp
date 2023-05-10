<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: genesissarabia
  Date: 5/10/23
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Search" />
  </jsp:include>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="/ads">Adlister</a>
    </div>
    <div>
      <label for="search"></label>
      <form class="d-flex" role="search" method="GET" action="/search">
        <input class="form-control me-2" type="search" placeholder="Search" name="search" id="search" aria-label="Search" required>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/login">Login</a></li>
      <li><a href="/logout">Logout</a></li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>

<c:forEach var="ad" items="${ad}">
  <div class="col-md-6">
    <h2><a href="/ads/view?id=${ad.id}">${ad.title}</a></h2>
    <p>${ad.description}</p>
  </div>
</c:forEach>
</body>

</html>