<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="grid">
    <nav class="header__navbar">
        <ul class="header__navbar-list">
            <div class="navbar-list__trangchu">
                <a href="Home" class="navbar-list__trangchu-item">Trang chủ</a>
            </div>
            <div class="navbar-list__ketnoi">Kết nối
                <a href="https://www.facebook.com/profile.php?id=100026940495915" class="navbar-list__ketnoi-item"><i class="fa-brands fa-facebook"></i></a>
                <a href="https://www.facebook.com/profile.php?id=100026940495915" class="navbar-list__ketnoi-item"><i class="fa-brands fa-instagram"></i></a>
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                <li class="header__navbar-item header__navbar-item--strong"><a href="account" class="dnhap">Quản lý tài khoản</a></li>
                    <li class="header__navbar-item header__navbar-item--strong"><a href="messageC" class="dnhap">Quản lý liên hệ</a></li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="header__navbar-item header__navbar-item--strong"><a href="manager" class="dnhap">Quản lý sản phẩm</a></li>
                </c:if>    
                
            </div>
        </ul>
        <ul class="header__navbar-list">
            <li class="header__navbar-item">
                <a href="./Contact.jsp" class="header__navbar-link">
                    <i class="fa-solid fa-circle-question"></i>
                    Liên hệ</a>
            </li>
            <c:if test ="${sessionScope.acc != null}">
                 <li class="header__navbar-item header__navbar-item--strong"><a href="TinhTrangDon?user=${user}" class="dnhap">Đơn Hàng</a></li>
                <li class="header__navbar-item header__navbar-item--strong"><a href="Infor" class="dnhap">Xin chào ${sessionScope.acc.user}</a></li>
                <li class="header__navbar-item header__navbar-item--strong"><a href="logout" class="dnhap">Đăng xuất</a></li>
            </c:if>
            
            <c:if test ="${sessionScope.acc == null}">
                <li class="header__navbar-item header__navbar-item--strong header__navbar-item--separate"><a href="./dangKi.jsp" class="dki">Đăng kí</a></li>
                <li class="header__navbar-item header__navbar-item--strong"><a href="./dangNhap.jsp" class="dnhap">Đăng nhập</a></li>
            </c:if>
        </ul>
    </nav>
    <div class="header-with-search">
        <div class="header__go">
            <a href="Home"><img src="./assets/img/logo.png" alt="" class="header__logo"></a>
        </div>
        <form action = "search" method="post" class="header__search">
            <input type="text" name="txt" class="header__search-input" placeholder="Nhập để tìm kiếm sản phẩm">
            <button type="submit" class="header__search-btn">
                <i class="header__search-btn-icon fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
        <div class="header__cart">
            <a href="./gioHang.jsp?user=${sessionScope.user}" class="header__cart-link">
                <i class="fa-solid fa-cart-shopping header__cart-icon"></i>
            </a>
        </div>
    </div>
</div>