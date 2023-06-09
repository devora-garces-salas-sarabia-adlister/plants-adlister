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
<div>
  <nav class="navbar navbar-default row gx-0">
    <div class="container-fluid">
      <div class="navbar-header col-2">
        <a class="navbar-brand text ps-3">Plantlister</a>
      </div>
      <div class="mt-3">
        <label for="search"></label>
        <form role="search" method="GET" action="/search" class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" name="search" id="search" aria-label="Search" required>
          <button class="btn btn-sm btn-secondary btn-outline-light" type="submit">Search</button>
        </form>
      </div>
      <button class="btn col-1"><a href="/profile" class="text">Back to Profile</a></button>
      <button class="btn col-1 me-3"><a href="/logout" class="text">Logout</a></button>
      </ul>
    </div>
  </nav>
</div>
