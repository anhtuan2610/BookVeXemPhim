<%-- 
    Document   : Event4
    Created on : Mar 2, 2023, 9:58:28 PM
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
                padding-top: 30px;
                display: flex;
                justify-content: space-around;
            }
            
            .container__p {
                padding-left: 30px;
                font-size: 20px;
            }
        </style>

        <header>
            <%@include file="../Home/HomeHeader.jsp" %>
        </header>

        <div class="container">
            <div class="container__img"><img src="../img/Home-img/Event-img4.png" alt="alt"/></div>
            <div class="container__p">
                <p><b>“Thứ Tư Vui Vẻ cùng CGV”</b> vào mỗi thứ Tư hàng tuần, bạn sẽ được tận hưởng những bộ phim siêu phẩm với giá cực ưu đãi! Nào, hãy đến CGV ngay để nạp lại năng lượng mà không cần chờ đến cuối tuần nào! </p>
                <br><p>(*) Ưu đãi 50.000đ/vé 2D áp dụng tại rạp: CGV Vincom Sóc Trăng.</p>
                <br><p>(*) Ưu đãi 55.000đ/vé 2D áp dụng tại cụm rạp: CGV Vĩnh Trung Plaza, CGV Vincom Cẩm Phả và các rạp khu vực: Bình Định, Dak Lak, Hậu Giang, Khánh Hòa, Kiên Giang, Kon Tum, Lạng Sơn, Nghệ An, Sơn La, Tây Ninh, Thái Nguyên và Trà Vinh.</p>
                <br><p>(*) Ưu đãi 60.000đ/vé 2D áp dụng tại cụm rạp CGV Vincom Móng Cái và các rạp khu vực: Bạc Liêu, Cần Thơ, Hà Tĩnh, Quảng Ngãi, Tiền Giang, Yên Bái.</p>
                <br><p>(*) Ưu đãi 65.000đ/vé 2D áp dụng tại khu vực Đồng Tháp và các cụm rạp CGV Vincom Hải Phòng, CGV Satra Củ Chi, CGV Phú Yên, CGV Lam Sơn Square.</p>
                <br><p>(*) Ưu đãi 70.000đ/vé 2D áp dụng tại các rạp khu vực Đồng Nai, Phú Thọ, Vĩnh Long và cụm rạp CGV Vincom Đà Nẵng, CGV Aeon Hải Phòng, CGV Vincom Hạ Long, CGV Petro Vũng Tàu</p>
                <br><p>(*) Ưu đãi 75.000đ/vé 2D áp dụng tại các rạp Khu Vực: Hồ Chí Chí Minh, Hà Nội, Bình Dương, Hưng Yên.</p>
                <br><p>(*) Ưu đãi 95.000đ/vé 2D áp dụng tại các cụm rạp: CGV Tràng Tiền Plaza, CGV Vincom Bà Triệu, CGV Vincom Metropolis Liễu Giai, CGV Liberty Centre Point, CGV Parkson Đồng Khởi, CGV Vincom Đồng Khởi, CGV Vincom Landmark.</p>
                <br><p>Để biết giá vé ưu đãi của chương trình này tại rạp bạn muốn đến, vui lòng xem phần ”Giá vé” tại trang rạp!</p>
                <br><p><b>Điều khoản và điều kiện:</b>
                    <br>- Giá vé Thứ Tư Vui Vẻ áp dụng cho ghế thường, ghế VIP, ghế Deluxe và ghế đôi (Giá vé trên chưa bao gồm phụ thu cho ghế Sweetbox và các phim định dạng Dolby Atmos).
                    <br>- Giá vé Thứ Tư Vui Vẻ không áp dụng vào các ngày Lễ, Tết, suất chiếu đặc biệt, suất chiếu sớm và định dạng, phòng chiếu đặc biệt (4DX, IMAX, GOLDCLASS, L’amour, ScreenX, Starium, Premium, Cine & Forêt, Cine & Living Room).
                    <br>- Giá vé Thứ Tư Vui Vẻ sẽ không áp dụng vào ngày công chiếu của phim.
                    <br>- Không áp dụng cùng các chương trình khuyến mãi khác.</p>
            </div>
        </div>

        <footer>
            <%@include file="../Home/HomeFooter.jsp" %>
        </footer>
    </body>
</html>
