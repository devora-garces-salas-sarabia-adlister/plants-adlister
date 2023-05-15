<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <link rel="stylesheet" href="/css/createAd.css">
</head>
<body>
<img src="/img/redflowers.jpg" id="background-img">
    <div class="container">
        <h1>Create New Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-secondary btn-outline-light mt-3 me-2">
            <button type="button" class="btn btn-secondary btn-block submit btn-text btn-outline-light" data-bs-dismiss="modal"><a href="/profile" class="text-light">Cancel</a></button>
        </form>
    </div>
</body>
</html>
