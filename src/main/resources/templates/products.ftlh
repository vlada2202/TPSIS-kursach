<!DOCTYPE html>
<html lang=en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/4.css">
    <title> Услуги </title>
</head>
<body>
<header class="p-3 mb-3 border-bottom">
    <div class="container">
        <div class="d-flex flex-wrap align-items-left justify-content-left justify-content-lg-start">
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <h2>Beauty</h2>
                <div class="ada">
                <li><a href="/" class="nav-link px-2 link-secondary text-decoration-none text-reset text-primary">Услуги</a></li>
                </div>
                <div class="wqwq">
                <li><a href="/infomasters" class="nav-link px-2 link-secondary text-decoration-none text-reset text-primary">Мастера</a></li>
                </div>
                <div class="ad">
                    <#if user.isAdmin()>
                        <a href="/admin" class="nav-link px-2 link-secondary text-decoration-none text-reset text-primary">
                            Панель администратора
                        </a>
                    </#if>
                </div>
            </ul>
            <div class="asa">
            <#if user.email??>
                <div class="zz">
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <a onclick="event.preventDefault(); this.closest('form').submit();" class="styled-link">Выйти</a>
                </form>
                </div>
            <#else>
                <div class="ii">
                <a href="/autorisation">Войти</a>
                </div>
            </#if>
            </div>
            <div class="poisk">
                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" action="/" method="get">
                    <div class="input-group">
                        <input type="text" id="searchInput" name="title" class="form-control" placeholder="Поиск по названию:">
                        <button type="submit" class="btn btn-primary" style="background-color: #FFD8E6; border-color: #FFD8E6; color: #555555;">Поиск</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</header>
<div class="colp">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <#list products as product>
            <div class="col col-2">
                    <div class="card shadow-sm">
                        <img src="/images/${product.previewImageId}" alt="">
                        <div class="card-body">
                            <a href="/product/${product.id}" class="product-link">
                            <h3>${product.title}</h3>
                            </a>
                            <p class="card-text">${product.description}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="df">
                                    <button class="btn btn-secondary rounded-pill px-3" type="button" onclick="document.forms['myForm'].submit()">Оформить запись</button>
                                    <form name="myForm" action="/view" method="get">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
<#else>
    <h1 style="text-align: center">Не найдено</h1>
</#list>
</div>
</div>
</body>
</html>