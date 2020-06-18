<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Регистрация нового аккаунта</title>
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/css/common.css" rel="stylesheet">
</head>

<body>

<div class="container">
    <h4 class="text-center">Пожалуйста заполните информацию в формах</h4>

    <form method="POST" action="${contextPath}/createUser" class="form-signin" accept-charset="UTF-8">
        <div class="form-group">
            <h5 class="text-left">Логин</h5>
            <input name="login" type="text" class="form-control" placeholder="Введите логин" autofocus="true" required/>
            <h5 class="text-left">Пароль</h5>
            <input name="password" type="password" class="form-control" placeholder="Ввидете пароль" required/>
            <h5 class="text-left">Имя</h5>
            <input name="name" type="text" class="form-control" placeholder="Введите ваше имя" required/>
            <h5 class="text-left">Фамилия</h5>
            <input name="lastname" type="text" class="form-control" placeholder="Введите вашу фамилию"/>
            <h5 class="text-left">Почта</h5>
            <input name="email" type="text" class="form-control" placeholder="Введите ваш e-mail" required/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрироваться</button>
        </div>
    </form>

</body>
</div>
<div >
                        <img src="img/Group 15.png"  alt="wave" class="wave animate__animated animate__fadeInUp">
                    
                </div>
</body>
</html>