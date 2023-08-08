<%-- 
    Document   : BuyHistory
    Created on : Mar 13, 2023, 4:13:17 PM
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
        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>
        <div class="info">
            <h2>Vé đã mua</h2>
            <table border="1">
                <tr style="font-weight: 700">
                    <td>BillId</td>
                    <td>UserName</td>
                    <td>MovieName</td>
                    <td>RoomId</td>
                    <td>Seat</td>
                    <td>MoviePrice</td>
                    <td>CountTicket</td>
                    <td>SumPrice</td>
                </tr>

                <c:forEach  items="${data}" var="item">
                    <tr>
                        <td>${item.getBillId()}</td>
                        <td>${item.getUserName()}</td>
                        <td>${item.getMovieName()}</td>
                        <td>${item.getRoomId()}</td>
                        <td>${item.getAllSeat()}</td>
                        <td>${item.getMoviePrice()}</td>
                        <td>${item.getCountTicket()}</td>
                        <td>${item.getSum()}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <footer>
            <%@include file="HomeFooter.jsp" %>
        </footer>
    </body>
</html>
