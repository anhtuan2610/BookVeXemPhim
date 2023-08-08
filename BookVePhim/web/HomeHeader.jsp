<%-- 
    Document   : WebHeader
    Created on : Mar 2, 2023, 11:11:58 AM
    Author     : trana
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }

            .app {
                background-color: #e2e2e2;
            }

            .header img {
                display: block;
            }

            .header__banner {
                height: 500px;
                width: 100%;
                background-color: #fdfcf0;
            }

            .header__navbar {
                padding: 15px 0;
                background-color: rgb(34, 23, 23);
                display: flex;
                justify-content: space-between;
                list-style: none;
            }

            .header__navbar-list-left {
                display: flex;
                justify-content: space-around;
            }

            .header__navbar-list-left li:nth-child(3) {
                color: white;
                position: relative;
            }

            .header__navbar-list-left
            li:nth-child(3):hover
            .header__navbar-item-dropdown {
                display: block;
                white-space: nowrap;
            }

            .header__navbar-list-left,
            .header__navbar-list-right {
                list-style: none;
            }


            .header__navbar-item,
            .header__navbar-item-link {
                display: inline-block;
                font-size: 30px;
                color: white;
                margin: 0 12px;
                text-decoration: none;
            }

            .header__navbar-item,
            .header__navbar-item-link:hover {
                color: rgba(255, 255, 255, 0.8);
            }

            .header__navbar-item-dropdown {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                padding: 12px 16px;
                z-index: 1;
            }

            .header__navbar-item-dropdown a {
                color: black;
                padding: 12px 30px;
                text-decoration: none;
                display: block;
            }

            #hello-name{
                color: violet;
            }
        </style>

        <div class="app">
            <header class="header">
                <img class="header__banner" src="./img/Home-img/a.jpg" alt="alt" />
                <nav class="header__navbar">
                    <ul class="header__navbar-list-left">
                        <li class="header__navbar-item">
                            <a href="home" class="header__navbar-item-link">Trang chủ</a>
                        </li>


                        <li class="header__navbar-item">
                            <a href="movieShowing" class="header__navbar-item-link">Mua vé</a>
                        </li>

                        <li class="header__navbar-item">
                            <a>Phim</a>
                            <div class="header__navbar-item-dropdown">
                                <a href="movieShowing">Phim đang chiếu</a>
                                <a href="movieUpcoming">Phim sắp chiếu</a>
                            </div>
                        </li>
                        <li class="header__navbar-item">
                            <a href="event" class="header__navbar-item-link">Ưu đãi</a>
                        </li>
                    </ul>

                    <ul class="header__navbar-list-right">
                        <c:if test="${sessionScope.acc == null}">
                            <li class="header__navbar-item">
                                <a href="homeRegister" class="header__navbar-item-link">
                                    <svg
                                        viewBox="0 0 24 24"
                                        width="24"
                                        height="24"
                                        stroke="currentColor"
                                        stroke-width="2"
                                        fill="none"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        class="css-i6dzq1"
                                        >
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="12" cy="7" r="4"></circle>
                                    </svg>
                                    Đăng ký</a> 
                            </li>
                            <li class="header__navbar-item">
                                <a href="homeLogin" class="header__navbar-item-link">Đăng nhập</a>
                            </li>
                        </c:if>

                        <c:if test="${sessionScope.acc != null}">
                            <c:if test="${sessionScope.acc.getAdminCheck() == '1'}">
                                <li class="header__navbar-item">
                                    <a href="admin" class="header__navbar-item-link"><p id="hello-admin">Admin</p></a>
                                </li>
                            </c:if>
                            <li class="header__navbar-item">
                                <a href="userInfo" class="header__navbar-item-link"><p><p id="hello-name">Hello, ${sessionScope.acc.getName()}</p></p></a>
                            </li>
                            <li class="header__navbar-item">
                                <a href="buyHistory" class="header__navbar-item-link"><p>Lịch sử đặt hàng</p></a>
                            </li>
                            <li class="header__navbar-item">
                                <a href="homeLogout" class="header__navbar-item-link">Đăng xuất</a>
                            </li>

                        </c:if>
                    </ul>

                </nav>
            </header>
        </div>
    </body>
</html>
