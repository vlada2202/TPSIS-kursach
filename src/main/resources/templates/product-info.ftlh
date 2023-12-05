<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>SHOP</title>
    <!-- Подключение файлов стилей Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .image-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            gap: 20px;
        }

        .image-container img {
            height: 237px;
            width: auto;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="image-container">
    <div class="container">
        <h1 class="mt-4">Beauty</h1>
        <hr>
        <h4>Подробная информация об услуге</h4>
        <div class="row">
            <div class="col-md-12">
                <div class="image-container">
                    <#list images as img>
                        <img src="/images/${img.id}" class="img-thumbnail">
                    </#list>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-12">
                <div class="product-info">
                    <b>Название услуги:</b> ${product.title}<br>
                    <b>Описание:</b> ${product.description}<br>
                    <b>Цена:</b> ${product.price}<br>
                    <b>Мастер:</b> ${product.master}<br>
                    <#if user.isAdmin()>
                    <form action="/product/delete/${product.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <button type="submit" class="btn btn-danger mt-3">Удалить</button>
                    </form>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Подключение файлов скриптов Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>