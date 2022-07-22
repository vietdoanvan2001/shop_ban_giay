<%-- 
    Document   : index
    Created on : May 20, 2022, 9:30:43 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./assets/fonts/fontawesome-free-6.1.1-web/fontawesome-free-6.1.1-web/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/css/ctsp.css">
    </head>
    <body>
        <div class="app">
            <header class="header">
                <jsp:include page="Layout.jsp"></jsp:include>
                </header>
                <div class="slider">
                    <div class="grid">
                        <div class="slider__container">
                            <div class="aspect-ratio-169">
                                <img src="./assets/img/slider0.jpg" alt="">
                                <img src="./assets/img/slider1.jpg" alt="">
                                <img src="./assets/img/slider2.jpg" alt="">
                                <img src="./assets/img/slider3.jpg" alt="">
                            </div>
                        </div>
                        <div class="slider__right">
                            <div class="slider__right-item">
                                <img src="./assets/img/slide-right-down.jpg" alt="" class="slider__right-img">
                                <img src="./assets/img/pasted image 0.png" alt="" class="slider__right-img slider__down">
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="slider__banner">
                        <div class="banner-item">
                            <div class="item-icon"><i class="fa-solid fa-credit-card"></i></div>
                            <h3 class="item-name">Cam kết chính hãng</h3>
                            <h6 class="item-slogan">100% Authentic</h6>
                            <p class="item-text">Cam kết sản phẩm chính hãng từ Châu Âu, Châu Mỹ...</p>
                        </div>
                        <div class="banner-item">
                            <div class="item-icon"><i class="fa-solid fa-truck-fast"></i></div>
                            <h3 class="item-name">GIAO HÀNG HỎA TỐC</h3>
                            <h6 class="item-slogan">Express delivery</h6>
                            <p class="item-text">SHIP hỏa tốc 1h nhận hàng trong nội thành Hà Nội</p>
                        </div>
                        <div class="banner-item">
                            <div class="item-icon"><i class="fa-solid fa-phone-volume"></i></div>
                            <h3 class="item-name">HỖ TRỢ 24/24</h3>
                            <h6 class="item-slogan">Supporting 24/24</h6>
                            <p class="item-text">Gọi ngay</p>
                        </div>
                    </div>
                </div>
                <div class="content grid">
                    <div class="content-left">
                        <nav class="catenory">
                            <h3 class="catenory__heading">
                                <i class="fa-solid fa-list"></i>
                                Danh mục
                            </h3>
                            <ul class="catenory-list">
                            <c:forEach items="${listCat}" var="o">
                                <li class="catenory-item extend">
                                    <a href="category?cid=${o.cid}" class="catenory-item__link">${o.cname}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </nav>
                </div>
                <div class="content-right">
                    <div class="app__container grid">
                        <div class="grid__row app__content">


                            <div class="home-product ">
                                <div class="grid__row">
                                    <c:forEach items ="${listProduct}" var ="o">
                                        <div class="grid__column-2-4">
                                            <a class="home-product-item" href="detail?pid=${o.id}">
                                                <div class="home-product-item__img" style="background-image: url(${o.image};"></div>
                                                <h4 class="home-product-item__name">${o.name} </h4>
                                                <div class="home-product-item__price">
                                                    <span class="home-product-item__price-old">${o.priceOld}</span>
                                                    <span class="home-product-item__price-new">${o.priceNew}</span>
                                                </div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page">
                        <c:forEach begin="1" end="${endP}" var="i">
                            <a href="Home?index=${i}">${i}</a>
                        </c:forEach> 
                    </div>
                </div>

                <div class="phancach">
                </div>
            </div>

        </div>
        <footer class="footer">      
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
    </div>
</body>
<script>
    const imgPosition = document.querySelectorAll(".aspect-ratio-169 img");
    const imgContainer = document.querySelector('.aspect-ratio-169');
    const dots = document.querySelectorAll(".dot");
    var i;
    function showSlides() {
        imgPosition.forEach(function (image, index) {
            image.style.display = "none";
        })
        imgPosition[i].style.display = "block";
        i++;
        if (i == imgPosition.length) {
            i = 0;
        }
        setTimeout(showSlides, 3000);
    }
    showSlides(i = 0);
</script>
</html>
