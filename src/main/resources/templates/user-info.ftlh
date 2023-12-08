<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Beauty</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("/static/img/8.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
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
<div class="container">
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
</div>
</body>
</html>