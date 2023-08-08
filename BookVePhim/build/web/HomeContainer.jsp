<%-- 
    Document   : WebContainer
    Created on : Mar 2, 2023, 11:18:33 AM
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
            .container{
                background: url(./img/Home-img/4873152.jpg) center;
            }
            
            .container__title {
                font-family: Verdana;
                font-size: 50px;
                line-height: 28.8px;
                text-align: center;
                text-shadow: 2px 2px 4px #000000;
                padding-top: 10px;
                padding-bottom: 30px;
            }

            .container__main1 {
                box-sizing: border-box;
                margin: 0px;
                padding: 0px;
                padding-top: 150px;
            }

            .container__slider {
                width: 60%;
                margin: 0 auto;
                overflow: hidden;
                padding-top: 20px;
            }

            .container__slider-imgs {
                display: flex;
            }

            .container__slider-imgs img {
                width: 100%;
            }

            .container__slider-imgs input {
                display: none;
            }

            .container__labelslider {
                display: flex;
                justify-content: center;
            }

            .container__labelslider label {
                height: 20px;
                width: 20px;
                border-radius: 50%;
                border: 2px solid black;
                margin: 5px;
            }

            .container__labelslider label:hover {
                background: rgb(0, 183, 255);
            }

            #img1:checked ~ .imgslider1 {
                margin-left: -100%;
            }

            #img2:checked ~ .imgslider2 {
                margin-left: -200%;
            }

            #img3:checked ~ .imgslider3 {
                margin-left: -300%;
            }

            #img4:checked ~ .imgslider4 {
                margin-left: -400%;
            }

            .container__main2{
                padding-top: 120px;
            }

            .container__scroll-ngang{
                display: flex;
                gap: 20px;
                height: 510px;
                overflow: auto;
                padding-bottom: 15px;
            }

            .container__scroll-ngang::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
                background-color: #f5f5f5;
            }

            .container__scroll-ngang::-webkit-scrollbar {
                height: 10px;
                background-color: #864949;
            }

            .container__scroll-ngang::-webkit-scrollbar-thumb {
                background-color: #352525;
            }

        </style>

        <div class="container">
            <div class="container__main1">
                <h2 class="container__title">TOP 4 PHIM PHÒNG VÉ <svg viewBox="0 0 24 24" width="40" height="40" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><rect x="2" y="2" width="20" height="20" rx="2.18" ry="2.18"></rect><line x1="7" y1="2" x2="7" y2="22"></line><line x1="17" y1="2" x2="17" y2="22"></line><line x1="2" y1="12" x2="22" y2="12"></line><line x1="2" y1="7" x2="7" y2="7"></line><line x1="2" y1="17" x2="7" y2="17"></line><line x1="17" y1="17" x2="22" y2="17"></line><line x1="17" y1="7" x2="22" y2="7"></line></svg></h2>
                <div class="container__slider">
                    <div class="container__slider-imgs">
                        <input type="radio" name="inputslider" id="img1" />
                        <input type="radio" name="inputslider" id="img2" />
                        <input type="radio" name="inputslider" id="img3" />
                        <input type="radio" name="inputslider" id="img4" />

                        <img src="./img/Home-img/Top4-img1.jpg" alt="img1" class="imgslider1" />
                        <img src="./img/Home-img/Top4-img2.jpg" alt="img2" class="imgslider2" />
                        <img src="./img/Home-img/Top4-img3.jpg" alt="img3" class="imgslider3" />
                        <img src="./img/Home-img/Top4-img4.jpg" alt="img4" class="imgslider4" />
                    </div>

                    <div class="container__labelslider">
                        <label for="img1"></label>
                        <label for="img2"></label>
                        <label for="img3"></label>
                        <label for="img4"></label>
                    </div>
                </div>
            </div>

            <div class="container__main2">
                <h2 class="container__title">EVENT</h2>
                <div class="container__scroll-ngang">
                    <a href="#"><img src="./img/Home-img/Event-img1.png" alt="img1" class="" /></a>
                    <a href="#"><img src="./img/Home-img/Event-img2.png" alt="img2" class="" /></a>
                    <a href="#"><img src="./img/Home-img/Event-img3.png" alt="img3" class="" /></a>
                    <a href="#"><img src="./img/Home-img/Event-img4.png" alt="img4" class="" /></a>
                    <a href="#"><img src="./img/Home-img/Event-img1.png" alt="img5" class="" /></a>
                    <a href="#"><img src="./img/Home-img/Event-img2.png" alt="img6" class="" /></a>
                    <a href="#"><img src="./img/Home-img/Event-img3.png" alt="img7" class="" /></a>
                    <a href="#"><img src="./img/Home-img/Event-img4.png" alt="img8" class="" /></a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
