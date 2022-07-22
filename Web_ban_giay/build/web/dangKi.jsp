<%-- 
    Document   : dangKi
    Created on : May 20, 2022, 11:09:48 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="keywords"
              content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
        <meta name="author" content="leamug">
        <title>Unique Login Form | Bootstrap Templates</title>
        <link href="css/style.css" rel="stylesheet" id="style">
        <!-- Bootstrap core Library -->
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
        <!-- Font Awesome-->
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="./assets/css/Register.css" rel="stylesheet">
    </head>
    <body>

        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <div class="col-md-offset-5 col-md-4 text-center">
                    <h1 class='text-white'>GreyBShop</h1>
                    <form action="register" method="post" class="auth-form__form"></br>
                        <h4>Đăng kí</h4>
                        </br>
                        <input name="user" type="text" id="userName" class="form-control input-sm chat-input" placeholder="username"/>
                        </br></br>
                        <input name="pass" type="password" id="userPassword" class="form-control input-sm chat-input" placeholder="password"/>
                        </br></br>
                        <div class="footer text-white text-center">
                            <input type="checkbox" onclick="myFunction()">
                            Hiện mật khẩu
                        </div>
                        
                        <!-- show password -->
                        <script>
                          function myFunction() {
                            var x = document.getElementById("userPassword");
                            var y = document.getElementById("userPasswordcheck");
                            if (x.type === "password") {
                              x.type = "text";
                              y.type = "text";
                            } else {
                              x.type = "password";
                              y.type = "password";
                            }
                          }
                        </script>
                        </br></br>
                        <div class="wrapper">
                            <span class="group-btn">
                                <button type="submit" class="btn btn-danger btn-md">Đăng kí <i class="fa fa-sign-in"></i></button>
                            </span>
                        </div>
                        
                    </form>
                </div>
            </div>
            </br></br></br>
            <!--footer-->
            <div class="footer text-white text-center">
                <p>© Bạn đã có tài khoản? <a href="./dangNhap.jsp">Đăng nhập</a></p>
            </div>
            <!--//footer-->
        </div>
    </body>
</html>

