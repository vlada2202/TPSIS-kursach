<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
<#--    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/6.css">
    <title>Добавление мастера</title>
</head>
<body>
<h1>Добавить мастера</h1>
<div class="masters">
    <form action="/addmasters" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
        <div class="form-group ">
            <label for="fullName">Фамилия и имя:</label>
            <input type="text" class="form-control" required id="fullName" name="fullName">
        </div>
        <div class="form-group ">
            <label for="description">Описание:</label>
            <input type="text" class="form-control" required id="description" name="description">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark">Добавить мастера</button>
    </form>
    <div class="ss">
        <#if errorMessage??>
            <h2 style="color: black">${errorMessage}</h2>
        </#if>
    </div>
</div>
</body>
</html>