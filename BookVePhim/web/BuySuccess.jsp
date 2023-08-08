<%-- 
    Document   : BuySuccess
    Created on : Mar 12, 2023, 12:56:48 AM
    Author     : trana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            .container p{
                margin: auto;
                padding: 20px 0;
                font-size: 50px;
            }
        </style>
        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>

        <div class="container">
            <p style="color: red" id = "error">${error1}</p>
            <p id = "success">${success1}</p>
            <p id = "success">${success2}</p>
        </div>

        <footer>
            <%@include file="HomeFooter.jsp" %>
        </footer>
    </body>
</html>
