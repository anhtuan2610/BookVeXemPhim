<%-- 
    Document   : HomeDesign
    Created on : Mar 2, 2023, 10:10:31 PM
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
        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>

        <div class="container">
            <%@include file="HomeContainer.jsp" %>
        </div>

        <footer class="footer">
            <%@include file="HomeFooter.jsp" %>
        </footer>
    </body>
</html>
