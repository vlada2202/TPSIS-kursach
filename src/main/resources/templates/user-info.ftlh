<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Beauty</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        hr {
            margin-top: 20px;
            margin-bottom: 20px;
        }
        div {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        h2 {
            margin-bottom: 10px;
        }
        b {
            font-weight: bold;
        }
        h2.error {
            color: red;
        }
    </style>
</head>
<body>
<h1>Информация о пользователе</h1>
<hr>
<div>
    <h2>${user.name}</h2>
    <br>
    Номер телефона: <b>${user.phoneNumber}</b>
    <br>
    Почта: <b>${user.email}</b>
</div>
<#if errorMessage??>
    <h2 class="error">${errorMessage}</h2>
</#if>
<br>
<hr>
</body>
</html>