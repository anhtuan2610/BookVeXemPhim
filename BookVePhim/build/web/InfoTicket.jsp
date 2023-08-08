<%-- 
    Document   : SuccessBill
    Created on : Mar 11, 2023, 10:44:12 PM
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
            body{
                background: url(img/Home-img/4873152.jpg) center no-repeat;
            }
            .container{
                padding: 20px 0;
                max-width: 50%;
                border: 3px red solid;
                margin: 50px auto;
                text-align: center;
                font-size: 40px;
            }
            .container span{
                padding-top: 200px;
                font-weight: 700;
            }
            .container p{
                padding-top: 3px;
            }
            .container input{
                font-size: 20px;
                font-weight: 500;
                color: #4e4e4e;
                height: 100px;
                width: 200px;
            }
            
            #error{
                color: red;
            }
        </style>
        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>
        <div class="container">
            <form action="successTicket" method="post">
                <input type="hidden" name="username" value="${data.getUserName()}"/>
                <input type="hidden" name="moviename" value="${data.getMovieName()}"/>
                <input type="hidden" name="roomid" value="${data.getRoomId()}"/>
                <input type="hidden" name="seat" value="${data.getAllSeat()}"/>
                <input type="hidden" name="movieprice" value="${data.getMoviePrice()}"/>
                <input type="hidden" name="countticket" value="${data.getCountTicket()}"/>
                <input type="hidden" name="sum" value="${data.getSum()}"/>
                
                <input type="hidden" name="userid" value="${sessionScope.acc.getUserId()}"/>
                <input type="hidden" name="balance" value="${sessionScope.acc.getBalance()}"/>

                <h3>BILL THANH TOÁN</h3>
                <p><span>UserName:</span> ${data.getUserName()}</p><br>
                <p><span>Tên phim:</span> ${data.getMovieName()}</p><br>
                <p><span>Mã phòng:</span> ${data.getRoomId()}</p><br>
                <p><span>Mã ghế:</span> ${data.getAllSeat()}</p><br>
                <p><span>Giá vé:</span> ${data.getMoviePrice()}</p><br>
                <p><span>Số vé:</span> ${data.getCountTicket()}</p><br>
                <p><span>Thành tiền:</span> ${data.getSum()}</p><br>
                <input type="submit" name="submit" value="THANH TOÁN">
            </form>
        </div>
        <footer>
            <%@include file="HomeFooter.jsp" %>
        </footer>
    </body>
</html>
