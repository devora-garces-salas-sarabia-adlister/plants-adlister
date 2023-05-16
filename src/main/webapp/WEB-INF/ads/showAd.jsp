<%--
  Created by IntelliJ IDEA.
  User: jennaelisedevora
  Date: 5/9/23
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Ads</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/newShowAd.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

</head>
<body>
<jsp:include page="/WEB-INF/partials/searchAdNavbar.jsp"/>
<img id="background-imgs" src="/img/grassy.jpg">
<div class="container4">
    <div class="container3">
        <div class="container2">
            <h5 class="card-title py-2 d-flex justify-content-center align-items-center"><a href="/ads/view?id=${ad.id}" >${ad.title}</a></h5>
            <p class="card-text">${ad.description}</p>
        </div>
    </div>
</div>
<div class="btn-ctnr col-12 d-flex align-items-center justify-content-center">
<button class="btn btn-secondary btn-block submit btn-text btn-outline-light" id="buyItem">Buy Now!</button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script>
    $("#buyItem").click(function(){
        alert("Thank you for your purchase!");
    });
</script>
</html>
