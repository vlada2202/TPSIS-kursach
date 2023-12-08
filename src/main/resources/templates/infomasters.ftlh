<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/4.css">
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
        </div>
    </div>
</header>
<div class="row row-cols-1 row-cols-md-3 g-3">
    <#list masters as master>
        <div class="col col-4 col-md-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h3>${master.fullName}</h3>
                    <p class="card-text">${master.description}</p>
                </div>
                <div class="dd">
                    <#if user.isAdmin()>
                        <form action="/masters/delete/${master.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}" />
                            <button type="submit" class="btn btn-danger">Удалить</button>
                        </form>
                    </#if>
                </div>
            </div>
        </div>
    </#list>
</div>
</body>
</html>
