<%-- 
    Document   : Contact
    Created on : Jun 20, 2022, 8:43:18 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <form action="Fix" method="post">
        <h3>Thông tin khách hàng</h3>
        <div class="row">
            <c:if test="${user.size()!=0}">
                <c:forEach items="${user}" var="i">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="txtName" class="form-control" placeholder="Tên của bạn *" value="${i.getName()}" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtEmail" class="form-control" placeholder="Email của bạn *" value="${i.getEmail()}" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtPhone" class="form-control" placeholder="Số điện thoại *" value="${i.getPhone()}" />
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Cập nhật" />
                        </div>
                        <div class="form-group">
                            <a href="ChangePass.jsp">Đổi mật khẩu</a>
                        </div>
                        <div class="form-group">
                            <a href="Home" ">Quay lại trang chủ</a>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="txtAddress" class="form-control" placeholder="Địa chỉ nhà riêng *" value="${i.getAddress()}" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtMsg" class="form-control" placeholder="Thêm mô tả *" value="${i.getGt()}" />
                        </div>
                    </div>
                </c:forEach>
            </c:if>
            <c:if test="${user.size()==0}">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" name="txtName" class="form-control" placeholder="Tên của bạn *" value="" />
                    </div>
                    <div class="form-group">
                        <input type="text" name="txtEmail" class="form-control" placeholder="Email của bạn *" value="" />
                    </div>
                    <div class="form-group">
                        <input type="text" name="txtPhone" class="form-control" placeholder="Số điện thoại *" value="" />
                    </div>
                    <div class="form-group">
                        <input type="submit" name="btnSubmit" class="btnContact" value="Cập nhật" />
                    </div>
                    <div class="form-group">
                        <a href="ChangePass.jsp">Đổi mật khẩu</a>
                    </div>
                    <div class="form-group">
                        <a href="Home" ">Quay lại trang chủ</a>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" name="txtAddress" class="form-control" placeholder="Địa chỉ nhà riêng *" value="" />
                    </div>
                    <div class="form-group">
                        <input type="text" name="txtMsg" class="form-control" placeholder="Thêm mô tả *" value="" />
                    </div>
                </div>
            </c:if>
        </div>
    </form>
</div>