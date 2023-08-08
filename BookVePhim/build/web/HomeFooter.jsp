<%-- 
    Document   : HomeFooter
    Created on : Mar 2, 2023, 8:08:36 PM
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
            .footer {
                background-color: #e2e2e2;
            }

            .footer-padding{
                padding: 50px 50px;
                background: #000;
                color: white;
                font-size: 20px;
                display: flex;
                justify-content: space-between;
                min-height: 100px;
                gap: 24px;
            }

            .footer-content{
                width: 30%
            }
        </style>
        <footer class="footer">
            <div class="footer-padding">
                <div class="footer-content">
                    <p>Điều khoản sử dụng</p>
                    <p>
                        Điều Khoản Chung
                        Điều Khoản Giao Dịch
                        Chính Sách Thanh Toán
                        Chính Sách Bảo Mật
                        Câu Hỏi Thường Gặp
                    </p>
                </div>
                <div class="footer-content">
                    <p>Hoa lac</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicin</p>
                </div>
                <div class="footer-content">
                    <p>Hoa lac</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicin</p>
                </div>
            </div>
        </footer>
    </footer>
</body>
</html>
