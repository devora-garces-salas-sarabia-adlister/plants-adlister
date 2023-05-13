<%--
  Created by IntelliJ IDEA.
  User: danielasalas
  Date: 5/10/23
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand text-primary">Plantlister</a>
    </div>
    <div>
      <label for="search"></label>
      <form class="d-flex" role="search" method="GET" action="/search">
        <input class="form-control me-2" type="search" placeholder="Search" name="search" id="search" aria-label="Search" required>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
    <button class="btn"><a href="/profile">Back to Profile</a></button>
    <button class="btn"><a href="/logout">Logout</a></button>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>
