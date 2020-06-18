<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>

<!doctype html>
<html lang="ru">
<head>
    <!--<meta http-equip="Content-Type"; content="text-html"; charset="utf-8"/>-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="Грузовая компания Taxi One, предоставляет услуги перевозок тяжелых грузов.">
    <meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Taxi One</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<header id="header" class="header"> <!--1-->
    <div class="container">
        <div class="row">
            <div class="col-lg-2"><!--logo-->
                <img src="img/logo.png" class="logo animate__animated animate__pulse" alt="">
            </div>
            <div class="col-lg-6 ml-auto"><!--menu-->
                <ul class="menu d-flex justify-content-center animate__animated animate__pulse">
                    <li class="menu__item ">
                        <a href="#">О нас</a>
                    </li>
                    <li class="menu__item">
                        <a href="#">Отзывы</a>
                    </li>
                    <li class="menu__item">
                        <a href="#">Услуги</a>
                    </li>
                    <c:if test="${empty user && empty admin}">
                        <div class="col-lg-2">
                            <div class="menu__item">
                                <a href="${contextPath}/login.jsp">Вход</a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${!empty user || !empty admin}">
                        <div class="col-lg-2">
                            <div class="login animated fadeInRight">
                                <a href="${contextPath}/logout">Выход</a>
                            </div>
                        </div>
                    </c:if>
                </ul>
            </div>

                </div>
                <c:if test="${!empty user}">
                    <div class="row">
                        <div class="col-lg-12 tt" >
                            <h2>Привет ${user.name} ${user.lastname}!</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 menu__item">
                            <h2>
                                <a href="${contextPath}/enter">Вернуться</a>
                            </h2>
                        </div>
                    </div>
                </c:if>

                <c:if test="${!empty admin}">
                    <div class="row">
                        <div class="col-lg-12 tt">
                            <h2>Привет admin!</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 menu__item">
                            <h2>
                                <a href="${contextPath}/enterAdmin">Вернуться</a>
                            </h2>
                        </div>
                    </div>
                </c:if>

                <c:if test="${empty user && empty admin}">
                    <div class="row tt" >
                        <div class="col-lg-12">
                            <h2>Привет гость!</h2>
                        </div>
                    </div>
                </c:if>

        <div class="row">
            <div class="col-lg-6 ">
                <div class="offer">
                    <h1 class="offer__title">
                        Самые выгодные
                        грузовые перевозки
                        по всей Украине.
                    </h1>

                </div>

                <p class="offer__text">
                    Компания Taxi One признана самым <br>
                    успешным перевозчиком в 2019 году, <br>
                    по версии журнала Ukrainer.
                </p>



            </div>
                    <div class="col-lg-5">
                        <img src="${contextPath}img/Illustrate.svg"  alt="car" class="car animate__animated animate__backInLeft">
                    </div>
                </div>
            </div>
    <div >
        <img src="img/Group 15.png"  alt="wave" class="wave animate__animated animate__fadeInUp">

    </div>
        </header>

        <section id="features" class="header"> <!--2-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title">
                            <h2 class="title__main">
                                Наши преимущества
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="feature">
                            <i class="fa fa-cubes feature__icon"></i>
                            <div class="feature__block">
                                <p class="feature__text">
                                    Благодаря системе SaveIT <br>
                                    весь ваш груз будет специально <br>
                                    размещен в машине и закреплен, <br>
                                    что сохранит его в целостности.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3"> <!--2-->
                        <div class="feature">
                            <i class="fa  fa-tree feature__icon"></i>
                            <div class="feature__block">
                                <p class="feature__text">
                                    Все наши грузовые <br>
                                    автомобили максимально <br>
                                    безвредны для окружающей среды
                                    мы ценим будущее Земли.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="feature">
                            <i class="fa fa-shield feature__icon"></i>
                            <div class="feature__block">
                                <p class="feature__text">
                                    Каждая поездка <br>
                                    застрахована. В связи с <br>
                                    пандемией COVID-19, все<br>
                                    наши машины дезинфицируются.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="feature">
                            <i class="fa  fa-smile-o feature__icon"></i>
                            <div class="feature__block">
                                <p class="feature__text">
                                    Мы гарантируем вам<br>
                                    хорошее обслуживание с<br>
                                    улыбкой на лице! Хорошее <br>
                                    настроение - наш конек.
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


        </section>

        <section id="touch" class="touch"> <!--3-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title">
                            <h2 class="title__main yellow">
                                Оформить заказ такси
                            </h2>
                            <p class="title__text">
                                Закажите грузовое такси от Taxione!<br>
                                Запишите нам ваш номер телефона или e-mail и наш менеджер<br>
                                вам обязательно перезвонит!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 ">
                        <form action="#" class="form">
                            <input type="e-mail"  placeholder="Введите ваш номер телефона или e-mail" class="form__input" required>
                            <button type="submit" class="form__btn">Заказать</button>
                        </form>
                    </div>
                </div>
            </div>

        </section>



<footer id="footer" class="footer">
    <div class="container">
        <div class"row">
        <div class="col-lg-12">
            <div class="credits">
                Pleshkov Andrii ЕСТМу-19-1
            </div
        </div>
    </div>
    </div>

</footer>
        <script src="${contextPath}/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>