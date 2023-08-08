<%-- 
    Document   : UserInfo
    Created on : Mar 11, 2023, 5:12:46 PM
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
            .container {
                text-align: center;
                font-size: 50px;

            }

            .info{
                padding: 70px;
            }
        </style>
        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>
        <div class="container">
            <div class="info">
                <h2>Thông tin tài khoản</h2>
                UserName: ${sessionScope.acc.getUserName()}<br>
                Name: ${sessionScope.acc.getName()}<br>
                Số dư: ${sessionScope.balance}<br>
                <form action="userInfo" method="post">
                    Nạp thêm tiền: <input type="text" name="nap"/>
                    <input type="submit" name="submit" value="NAP TIEN">
                </form>
            </div>
            

<!--            <div class="info">
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
            </div>-->
        </div>
        <footer>
            <%@include file="HomeFooter.jsp" %>
        </footer>
    </body>
</html>
