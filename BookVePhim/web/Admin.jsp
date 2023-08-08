<%-- 
    Document   : Admin
    Created on : Mar 12, 2023, 9:52:00 PM
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
                padding: 20px 0;
                max-width: 30%;
                border: 2px solid red;
                font-size: 30px;
                text-align: center;
                margin: 50px auto;
            }

            .container input{
                height: 30px;
                width: 250px;
            }
        </style>
        <header>
            <%@include file="HomeHeader.jsp" %>
        </header>
        <div class="container">
            <div>
                <form action="admin" method="post">
                    <h2>Add movie</h2>
                    MovieName : <input type="text" name="moviename"> <br>
                    MovieImg : <input type="text" name="movieimg"> <br>
                    MovieTime : <input type="text" name="movietime"> <br>
                    Describe : <input type="text" name="describe"> <br>
                    <input type="submit" value="ADD" name="submit"><br>
                    <p>${success}</p>
                    <p>${erroradd}</p>
                </form>
                <form action="adminRemove" method="post">
                    <h2>Delete movie by id</h2>
                    MovieId : <input type="text" name="movieid"> <br>
                    <input type="submit" value="DELETE" name="submit"><br>
                    <p>${errorremove}</p>
                </form>
            </div>
        </div>
        <footer>
            <%@include file="HomeFooter.jsp" %>
        </footer>
    </body>
</html>
