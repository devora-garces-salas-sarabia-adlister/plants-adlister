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
  <div class="btn-ctnr col-12 d-flex align-items-center justify-content-center">
    <button class="btn btn-secondary btn-block submit btn-text btn-outline-light" id="buyItem">Buy Now!</button>
  </div>

  <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  <script>
    $("#buyItem").click(function(){
      alert("Thank you for your purchase!");
    });
  </script>
</c:forEach>

</body>
</html>