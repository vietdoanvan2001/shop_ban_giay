<%-- 
    Document   : Contact
    Created on : Jun 20, 2022, 8:43:18 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="./assets/css/contact.css"/>
<!------ Include the above in your HEAD tag ---------->

<div class="container contact-form">
    <div class="contact-image">
        <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
    </div>
    <form action="changepass" method="post">
        <h3>Thay đổi mật khẩu</h3>
        <div class="row">
            <div class="col-md-12">
                <p class="text-danger">${mess}</p>
                <div class="form-group">
                    <input type="password" name="oldpass" class="form-control" placeholder="Mật khẩu cũ *" value="" />
                </div>
                <div class="form-group">
                    <input type="password" name="newpass" class="form-control" placeholder="Mật khẩu mới *" value="" />
                </div>
                <div class="form-group">
                    <input type="password" name="confirmpass" class="form-control" placeholder="Nhập lại mật khẩu *" value="" />
                </div>
                <div class="form-group">
                    <input type="submit" name="btnSubmit" class="btnContact" value="Xác nhận" />
                </div>
                <div class="form-group">
                    <a href="Home" ">Quay lại trang chủ</a>
                </div>
            </div>
        </div>
    </form>
</div>
                <<script>
                    var inputDoc = document.querySelectorAll('.form-control');
                    
                </script>