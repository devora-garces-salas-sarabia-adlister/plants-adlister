<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: genesissarabia
  Date: 5/10/23
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <jsp:include page="/WEB-INF/partials/headerForSearchAd.jsp">
    <jsp:param name="title" value="Search" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/searchAdNavbar.jsp"/>
<img src="/img/wateringCan.jpg" class="backgroundimg">
<c:forEach var="ad" items="${ad}">
  <div class="container-4">
    <div class="container-3">
      <div class="card col-md-6 container-2">
        <h2 class="card-title py-2"><a class="text-decoration-none headerColor" href="/ads/view?id=${ad.id}">${ad.title}</a></h2>
        <p class="card-text">${ad.description}</p>
      </div>
    </div>
  </div>
</c:forEach>

</body>
</html>