<%--
  Created by IntelliJ IDEA.
  User: giannagarces
  Date: 5/10/23
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/updateAd.css">
    <link href="https://fonts.googleapis.com/css2?family=Pathway+Extreme:wght@500&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<img src="/img/meadow.jpg" id="background-img">
<div class="container">
    <h1>Edit post</h1>
    <form action="/updateAd" method="POST">
        <div>
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div>
            <label for="description">Description</label>
            <input id="description" name="description" class="form-control" type="text"
                   value="${ad.description}">
        </div>
        <input value="${ad.id}" type="hidden" name="id">
        <div>
            <button type="submit" class="btn btn-secondary btn-block submit btn-text">Make Edit</button>
            <button href="/profile" type="button" class="btn btn-secondary btn-block submit btn-text" data-bs-dismiss="modal">Cancel</button>
        </div>
    </form>
</div>
</div>
</body>
</html>
