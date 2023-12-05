<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
<#list masters as master>
    <div class="col col-2">
        <div class="card shadow-sm">
            <div class="card-body">
                    <h3>${master.fullName}</h3>
                <p class="card-text">${master.description}</p>
        </div>
            <#if user.isAdmin()>
                <form action="/masters/delete/${master.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <button type="submit" class="btn btn-danger mt-3">Удалить</button>
                </form>
            </#if>
    </div>
    </div>
</#list>
</body>
</html>
