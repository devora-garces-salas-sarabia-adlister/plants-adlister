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
    <title>Title</title>
</head>
<body>
<div class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit post</h5>
            </div>
            <form action="/updateAd" method="POST">
                <div class="modal-body">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
                </div>
                <div class="modal-body">
                    <label for="description">Description</label>
                    <input id="description" name="description" class="form-control" type="text"
                           value="${ad.description}">
                </div>
                <input value="${ad.id}" type="hidden" name="id">
                <div class="modal-footer">
                    <a href="/profile" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</a>
                    <button type="submit" class="btn btn-primary">Make Edit</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
