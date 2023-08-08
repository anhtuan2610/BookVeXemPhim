<%-- 
    Document   : BuyTicket
    Created on : Mar 9, 2023, 7:08:29 PM
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
            body {
                font-family: "Montserrat", sans-serif;
                display: flex;
                justify-content: center;
                flex-direction: column;
                margin: 0;
            }

            .container__info {
                padding-top: 30px;
                display: flex;
                justify-content: space-around;
            }

            .container__p {
                margin: auto;
                text-align: center;
                padding-left: 30px;
                font-size: 20px;
            }

            .container__info-p {
                padding-top:25px;
            }

            .container__info-name {
                font-size: 30px;
                font-weight: 700;
            }

            .container-booking {
                margin: 20px 0px;
                display: flex;
                align-items: center;
                flex-direction: column;
                border: 2px solid #4e4e4e;
            }

            .screen {
                display: flex;
                justify-content: center;
                align-items: center;
                background: #fff;
                height: 80px;
                width: 60%;
                margin: 15px 0;
                box-shadow: 0 3px 10px rgba(8, 1, 1, 0.7);
            }

            .row input {
                width: 10%;
                height: 40px;
            }

        </style>

        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>

        <div class="container">

            <div class="container__info">
                <div class="container__img"><img src="${list.get(0).getMovie().getMovieImg()}" alt="alt"/></div>
                <div class="container__p">
                    <div class="container__info-p container__info-name">${list.get(0).getMovie().getMovieName()}</div>
                    <div class="container__info-p container__info-describe">${list.get(0).getMovie().getMovieDescribe()}</div>
                    <div class="container__info-p container__info-room"><span style="font-weight: 700">Mã phòng: </span> ${list.get(0).getMovie().getRoomId()}</div>
                    <div class="container__info-p container__info-time"><span style="font-weight: 700">Thời lượng:</span> ${list.get(0).getMovie().getMovieTime()}</div>
                    <div class="container__info-p container__info-price"><span style="font-weight: 700">Giá vé(ngàn đồng):</span> ${list.get(0).getMovie().getMoviePrice()}</div>
                </div>
            </div>


            <div class="container-booking">
                <div class="screen">Màn hình chính</div>

                <div class="showcase">
                    <img
                        src="img/Home-img/334896373_154218004176565_1234065613976970625_n.png"
                        alt=""
                        />
                </div>

                <form action="infoTicket" method="post">
                    <input type="hidden" name="moviename" value="${list.get(0).getMovie().getMovieName()}"/>
                    <input type="hidden" name="movieprice" value="${list.get(0).getMovie().getMoviePrice()}"/>
                    <input type="hidden" name="roomid" value="${list.get(0).getMovie().getRoomId()}"/>
                    <input type="hidden" name="balance" value="${sessionScope.acc.getBalance()}"/>
                    <div class="row">
                        <c:forEach items="${list}" var="item">

                            <input type="checkbox" class="row-input" name="seat" value="${item.getSeatName()}" ${item.getSeatStatus()=="Sold"?"disabled checked":""} />${item.getSeatName()}

                        </c:forEach>
                    </div>
                    <input type="submit" name="submit" value="Thanh toán">
                </form>
                <p>${error}</p>
            </div>
        </div>
    </div>

    <footer>
        <%@include file="HomeFooter.jsp" %>
    </footer>
</body>
</html>
