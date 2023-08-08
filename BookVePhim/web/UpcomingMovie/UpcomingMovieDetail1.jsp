<%-- 
    Document   : UpcomingMovieDetail1
    Created on : Mar 6, 2023, 11:45:13 PM
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
            <%@include file="../Home/HomeHeader.jsp" %>
        </header>

        <div class="container">
            <div class="container__img"><img src="../img/UpcomingMovie-img/Movie1.jpg" alt="alt"/></div>
            <div class="container__p">
                <ul>
                    <li>
                        <p>
                            The Flash là bộ phim siêu anh hùng ra mắt năm 2023 của Mỹ 
                            dựa trên nhân vật cùng tên của DC Comics. 
                            Phim được sản xuất bởi DC Films, Double Dream, The Disco Factory 
                            và sẽ do Warner Bros. Pictures nắm quyền phân phối. Đây là phần phim 
                            thứ mười bốn thuộc Vũ trụ Mở rộng DC (DC Extended Universe – DCEU). 
                            Đạo diễn Andy Muschietti sẽ cầm trịch chiếc ghế đạo diễn của phim với 
                            kịch bản được chấp bút bởi Christina Hodson. Phim sẽ có sự tham gia diễn 
                            xuất chính của Ezra Miller trong vai Barry Allen / The Flash bên cạnh các diễn viên 
                            phụ khác như Ron Livingston, Michael Keaton, Kiersey Clemons, Michael Shannon, Antje Traue, Sasha Calle và Ben Affleck. 
                            Nội dung của phim sẽ xoay quanh câu chuyện Barry du hành về quá khứ để ngăn chặn vụ án gây chết cái chết của mẹ mình 
                            và hành động trái tự nhiên đó của cậu đã đem đến những hậu quả khôn lường cho cả thế giới.
                            <br>
                            <br>
                        </p>
                    </li>

                    <li>
                        <p>
                            Tháng 7, 2019, Muschietti và Hodson chính thức tham gia bộ phim và công đoạn tiền sản xuất được bắt đầu vào tháng 1 năm 2020. 
                            Phim sẽ chịu nhiều ảnh hưởng từ đầu truyện Flashpoint với sự xuất hiện của nhiều nhân vật từ DC Comics, bao gồm cả Affleck và Keaton, 
                            cả hai sẽ trở lại với vai diễn Batman trong các phiên bản của họ. Phim được chính thức bấm máy từ tháng 4 năm 2021 và kết thúc vào tháng 10 
                            cùng năm tại Warner Bros. Studios, Leavesden và một số địa điểm ở Anh
                            <br>
                        </p>
                    </li>
                </ul>
            </div>
        </div>

        <footer>
            <%@include file="../Home/HomeFooter.jsp" %>
        </footer>
    </body>
</html>
