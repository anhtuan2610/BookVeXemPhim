<%-- 
    Document   : PhimSapChieu
    Created on : Mar 7, 2023, 1:11:27 AM
    Author     : trana
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Model.Movie" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Movie> data = new ArrayList<Movie>();
            if(request.getAttribute("data")!=null)
            data=(ArrayList<Movie>)request.getAttribute("data");
        %>
        <style>
            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }

            body{
                font-size: 14px;
                color: #111;
                background: url(./img/Home-img/4873152.jpg);
            }

            .container{
                max-width: 1170px;
                margin: 0 auto;
                padding-top: 20px;
            }

            .container{
                text-align: center;
                padding: 30px 0px;
            }

            .container__title h3{
                font-size: 30px;
                font-weight: 600;
                padding: 10px 20px;
                text-transform: uppercase;
                border: 2px solid #bebebe;
                display: inline-block;
                background: -webkit-linear-gradient(black, red);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }

            ul.container__product-list{
                padding-top: 30px;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                list-style: none;
            }


            ul.container__product-list li{
                flex-basis: 25%;
                padding-left: 10px;
                padding-right: 10px;
                box-sizing: border-box;
                padding-bottom: 30px;
            }

            .product-item {
                border: 1px solid #9e9e9e;
            }


            ul.container__product-list li img {
                display: block;
                max-width: 100%;
                height: auto;
            }

            ul.container__product-list .product-top{
                position: relative;
                overflow: hidden;
            }

            ul.container__product-list .product-top a.detail {
                font-weight: 600;
                text-transform: uppercase;
                text-decoration: none;
                text-align: center;
                display: block;
                color: #fff;
                padding:20px 0px ;
                position: absolute;
                bottom: -38px;
                width: 100%;
            }

            .button_slide {
                -webkit-transition: ease-out 0.4s;
                -moz-transition: ease-out 0.4s;
                transition: ease-out 0.4s;
            }

            ul.container__product-list li:hover a.detail{
                box-shadow: inset 400px 0 0 0 #D80286;
                bottom: 150px;
            }

            ul.container__product-list li:hover a.booking{
                box-shadow: inset 400px 0 0 0 #D80286;
                bottom: 200px;
            }

            ul.container__product-list li .product-info{
                padding-top: 10px;
                font-weight: 700;
                display:block;
                text-decoration: none;
            }

            .product-time {
                padding-top: 5px;
                color: #9e9e9e;
            }

        </style>

        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>

        <div class="container">
            <div class="container__title"> <!-- headline -->
                <h3>Phim sắp chiếu</h3>
            </div>
            <ul class="container__product-list"> <!-- products -->
                <c:forEach items="${data}" var="item">
                    <li>
                        <div class="product-item">
                            <div class="product-top">
                                <a class="product-thumb">
                                    <img src="${item.getMovieImg()}" alt="alt"/>
                                </a>
                                <a href ="movieUpcomingDescribe?id=${item.getMovieId()}" class="button_slide detail">Chi tiết
                                </a> <!-- buy-now -->
                            </div>
                            <div class="product-info">
                                <div class="product-name">${item.getMovieName()}</div>
                                <div class="product-time">${item.getMovieTime()}</div> <!-- product-cat -->
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>

        </div>

        <footer>
            <%@include file="HomeFooter.jsp" %>
        </footer>

    </body>
</html>
