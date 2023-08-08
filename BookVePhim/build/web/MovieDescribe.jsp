<%-- 
    Document   : MovieDescribe
    Created on : Mar 7, 2023, 11:40:56 PM
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
            .container {
                max-width: 80%;
                padding-top: 30px;
                margin: 0 auto;
                display: block;
                text-align: center;
            }

            .container__p {
                padding-top: 50px;
                font-size: 25px;
            }
        </style>

        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>

        <div class="container">
            <c:forEach  items="${data}" var="item">
                <div class="container__img"><img src="${item.getMovieImg()}" alt="alt"/></div>
                <div class="container__p">
                    <ul>
                        <li>
                            <p>
                                ${item.getMovieDescribe()}
                            </p>
                        </li>
                    </ul>
                </div>
            </c:forEach>
        </div>

        <footer>
            <%@include file="HomeFooter.jsp" %>
        </footer>
    </body>
</html>
