<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title> Beauty </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/1.css">
</head>
<body>
<table class="table table-hover" border="1">
    <tr>
        <th>Имя</th>
        <th>Номер телефона</th>
        <th>Услуга</th>
        <th>Дата</th>
        <th>Время</th>
        <th>Удаление</th>
    </tr>
    <#list appointment as appointment>
    <tr>
        <th>${appointment.name}</th>
        <th>${appointment.nomertel}</th>
        <th>${appointment.ysluga}</th>
        <th>${appointment.date}</th>
        <th>${appointment.time}</th>
        <th>
            <form action="/admin/appointment/delete/${appointment.id}" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}" >
                <input type="submit" value="Удалить">
            </form>
        </th>
    </tr>
    <#else >
    <h3>Записей нет</h3>
</#list>
</table>
</body>
</html>