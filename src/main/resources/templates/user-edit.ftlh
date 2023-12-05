<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Beauty</title>
    <!-- Подключение стилей Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1>Beauty</h1>
    <hr>
    <h3 class="ms-2">Редактирование пользователя ${user.name}</h3>
    <form action="/admin/user/edit" method="post">
        <#list roles as role>
            <div class="form-check ms-2">
                <input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                <label class="form-check-label">${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button class="btn btn-primary ms-2" type="submit">Сохранить</button>
    </form>
</div>

<!-- Подключение скриптов Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>