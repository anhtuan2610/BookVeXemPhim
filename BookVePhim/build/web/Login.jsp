<%-- 
    Document   : Login
    Created on : Mar 7, 2023, 4:56:21 PM
    Author     : trana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <style>
        body{
            margin:0;
            color:#6a6f8c;
            background:url(./img/Home-img/low-angle-shot-mesmerizing-starry-sky.jpg) no-repeat center;
            font:600 16px/18px 'Open Sans',sans-serif;
        }
        *,:after,:before{
            box-sizing:border-box
        }
        .clearfix:after,.clearfix:before{
            content:'';
            display:table
        }
        .clearfix:after{
            clear:both;
            display:block
        }
        a{
            color:inherit;
            text-decoration:none
        }

        .login-wrap{ /*anh nen` , khung login*/
            margin:auto;
            max-width:525px;
            min-height:670px;
            position:relative;
            background:url(./img/ShowingMovie-img/Movie1.jpg) no-repeat center;
            box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
        }
        .login-html{ /*mau nen de len anh*/
            width:100%;
            height:100%;
            position:absolute;
            padding:90px 70px 50px 70px;
            background:rgba(40,57,101,.9);
        }
        .login-html .sign-in-htm,
        .login-html .sign-up-htm{
            top:0;
            left:0;
            right:0;
            bottom:0;
            position:absolute;
            transform:rotateY(180deg);
            backface-visibility:hidden;
            transition:all .4s linear;
        }
        .login-html .sign-in,
        .login-html .sign-up,
        .login-form .group .check{
            display:none;
        }
        .login-html .tab,
        .login-form .group .label,
        .login-form .group .button{
            text-transform:uppercase;
        }
        .login-html .tab{
            font-size:22px;
            margin-right:15px;
            padding-bottom:5px;
            margin:0 15px 10px 0;
            display:inline-block;
            border-bottom:2px solid transparent;
        }
        .login-html .sign-in:checked + .tab,
        .login-html .sign-up:checked + .tab{
            color:#fff;
            border-color:#1161ee;
        }
        .login-form{
            min-height:345px;
            position:relative;
            perspective:1000px;
            transform-style:preserve-3d;
        }
        .login-form .group{
            margin-bottom:15px;
        }
        .login-form .group .label,
        .login-form .group .input,
        .login-form .group .button{
            width:100%;
            color:#fff;
            display:block;
        }
        .login-form .group .input,
        .login-form .group .button{
            border:none;
            padding:15px 20px;
            border-radius:25px;
            background:rgba(255,255,255,.1);
        }
        .login-form .group input[data-type="password"]{
            text-security:circle;
            -webkit-text-security:circle;
        }
        .login-form .group .label{
            color:#aaa;
            font-size:12px;
        }
        .login-form .group .button{
            background:#1161ee;
        }
        .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
            transform:rotate(0);
        }
        .login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
            transform:rotate(0);
        }

        .hr{
            height:2px;
            margin:60px 0 50px 0;
            background:rgba(255,255,255,.2);
        }
        .foot-lnk{
            text-align:center;
        }

        #error{
            color: red;
        }
    </style>

    <body>
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Đăng nhập</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Đăng ký</label>
                <div class="login-form">
                    <form action="homeLogin" method="post">
                        <div class="sign-in-htm">
                            <div class="group">
                                <label for="user" class="label">Tài khoản</label>
                                <input id="user" name="account" type="text" class="input" required >
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Mật khẩu</label>
                                <input id="pass" name="password" class="input" type="password" data-type="password" required >
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Đăng nhập">
                            </div>
                            <p id = "error">${error1}</p>
                            <p id = "error">${error2}</p>
                            <div class="hr"></div>
                        </div>
                    </form>

                    <form action="homeRegister" method="post">
                        <div class="sign-up-htm">
                            <div class="group">
                                <label for="user" class="label">Tài khoản</label>
                                <input id="user" name="account" type="text" class="input" required>
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Mật khẩu</label>
                                <input id="pass" name="password" type="password" class="input" data-type="password" required>
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Nhập lại mật khẩu</label>
                                <input id="pass" name="repassword" type="password" class="input" data-type="password" required>
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Họ và tên</label>
                                <input id="pass" name="name" type="text" class="input" required>
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Đăng ký">
                            </div>
                            <p id = "error">${error3}</p>
                            <p id = "error">${error4}</p>
                            <p id = "error">${error5}</p>
                            <p id = "success">${success}</p>
                            <div class="hr"></div>
                            <div class="foot-lnk">
                                <label for="tab-1"></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
