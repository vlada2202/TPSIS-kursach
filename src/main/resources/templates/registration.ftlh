<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/4.css">
    <title>Название парикмахерской</title>
</head>
<body>
<h1>Регистрация</h1>
<div class="regist">
    <form action="/registration" method="post">
        <div class="form-group">
            <label for="name">Имя пользователя</label>
            <input type="text" class="form-control" required id="name" name="name">
        </div>
        <div class="form-group">
            <label for="email">Электронная почта</label>
            <input type="email" class="form-control" id="email" required name="email">
        </div>
        <div class="form-group">
            <label for="phoneNumber">Номер телефона</label>
            <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control" id="password" required name="password">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 100%" class="btn btn-dark btn-register">Зарегистрироваться</button>
    </form>
    <div class="ss">
        <#if errorMessage??>
            <h2 style="color: black">${errorMessage}</h2>
        </#if>
    </div>
</div>
</body>
</html>