<%--
  Created by IntelliJ IDEA.
  User: danielasalas
  Date: 5/10/23
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <link rel="stylesheet" href="/css/allAdsNav.css">
</head>
<nav class="navbar navbar-default row">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header col-2">
      <a class="navbar-brand text">Plantlister</a>
    </div>
    <div>
      <label for="search"></label>
      <form role="search" method="GET" action="/search" class="col-8 d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" name="search" id="search" aria-label="Search" required>
        <button class="btn btn-sm btn-secondary" type="submit">Search</button>
      </form>
    </div>
    <button class="btn col-1"><a href="/profile" class="text">Back to Profile</a></button>
    <button class="btn col-1"><a href="/logout" class="text">Logout</a></button>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>
