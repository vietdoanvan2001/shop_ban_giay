<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                <div class="ctsp">
                    <div class="ctsp__show">
                        <div class="ctsp__show-chuyen">
                            <img src="${detail.image}" alt="" style="width:100%;height:100;"> 
                        </div>

                    </div>
                    <div class="ctsp__text">
                        <p class="sp__name">
                            ${detail.name}
                        </p>
                        <p class="sp__label"> 
                            
                        </p>
                        <div class="home-product-item__price">
                            <span class="home-product-item__price-old">${detail.priceOld} VND    </span>
                        <span class="home-product-item__price-new">${detail.priceNew} VND</span>
                    </div>
                    <div class="phancach">
                    </div>
                    <div class="sp__thongtin">
                        <ul class="sp__thongtin-tt">
                            Trạng thái :
                        </ul>
                        còn hàng
                    </div>

                    <div class="sp__thongtin">
                        <ul class="sp__thongtin-tt">
                            Tình trạng :
                        </ul>
                        hàng mới 100%
                    </div>
                    <div class="sp__thongtin">
                        <ul class="sp__thongtin-tt">
                            Chính sách giao hàng và thanh toán :
                        </ul>
                        giao hàng trên toàn quốc và thanh toán khi nhận hàng
                    </div>
                    <div class="sp__link">
                        <i  class="sp__link-icon fas fa-angle-double-right"></i>
                        <a href="">Hướng dẫn cách quy đổi & đo size giày mới nhất 2020</a> 
                    </div>
                    <div class="sp__link">
                        <i class="sp__link-icon fas fa-angle-double-right"></i>
                        <a href=""> Khách hàng thân thiết - mua càng nhiều nhận ưu đãi càng lớn</a>
                    </div>

                    <%
                        String id = request.getParameter("pid");
                    %>
                    <div class="btn__buy">
                        <form action="ThemGioHang?user=${sessionScope.user}&id=<%=id%>&mode=0" method="post">
                            <input class="btn__buy-lable--btn btn__buy-primar" type="submit" value="ĐẶT HÀNG NGAY">
                        </form>
                        <form action="ThemGioHang?user=${sessionScope.user}&id=<%=id%>&mode=1" method="post">
                            <input class="btn__buy-lable--btn btn__buy-primar" type="submit" value="THÊM VÀO GIỎ HÀNG">
                        </form>
                    </div>
                    <div class="lienhe">
                        <div class="lienhe__contein">HÃY LIÊN HỆ VỚI CHÚNG TÔI ĐỂ ĐƯỢC TƯ VẤN THÊM VỀ SẢN PHẨM.</div>
                        <div class="sp__lienhe">
                            <ul class="sp__lienhe-tt">
                                Facebook :
                            </ul>
                            <a href="" class="sp__lienhe-link"> 
                                https://www.facebook.com
                            </a>
                        </div>
                        <div class="sp__lienhe">
                            <ul class="sp__lienhe-tt">
                                Hotline :
                            </ul>
                            <a href="" class="sp__lienhe-link"> 
                                01234567
                            </a>
                        </div>
                        <div class="sp__lienhe">
                            <ul class="sp__lienhe-tt">
                                Email:
                            </ul>
                            gmail@gmail.com
                        </div>
                    </div>
                </div>
            </div>
            <div class="all">
                <div class="new">
                    <p class="new__header">Tin mới cập nhật</p>
                    <div class="new__body">
                        <div class="new__right">
                            <div class="new__new">
                                <div class="new__new-img">
                                    <img src="./assets/img/trangchu/nike-air-jordan-1-high-obsidian-unc-1-1.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div>
                                <div class="new__new-img">
                                    <img src="./assets/img/converse/DZ_01047.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div><div class="new__new-img">
                                    <img src="./assets/img/trangchu/nike-air-jordan-1-high-tokyo-bio-hack-1-1.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div><div class="new__new-img">
                                    <img src="./assets/img/adidas/8.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="new__left">
                            <div class="new__new">
                                <div class="new__new-img">
                                    <img src="./assets/img/converse/4.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div>
                                <div class="new__new-img">
                                    <img src="./assets/img/vans/3.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div><div class="new__new-img">
                                    <img src="./assets/img/adidas/0.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div><div class="new__new-img">
                                    <img src="./assets/img/converse/2.jpg" alt="">
                                </div>
                                <div class="new__new-text">
                                    <a href="" class="new__new-text-content">CÁC MẪU AIR FORCE 1 NỔI TIẾNG ĐƯỢC GIỚI TRẺ SĂN LÙNG</a>
                                    <p class="new__new-text-information">
                                        Nếu các bạn là một fan trung thành của giày sneaker thì chắc hẳn không ai trong chúng ta đều không biết đến thương hiệu Nike, một trong những ông lớn của ngành sản xuất giày thể thao. "Ông trùm" này có nhiều dòng giày nổi tiếng như Nike Jordan, Air Max, M2K…,
                                        Và Air Force 1 là một trong những dòng đem lại tên tuổi nhiều nhất cho hãng. Vậy các bạn đã biết gì về mẫu giày Air Force 1 có những mẫu nào hot chưa? Nếu chưa biết thì các bạn hãy cùng Tulo Shop tìm hiểu về một số mẫu Air Force 1 nổi tiếng được giới trẻ săn lùng nhé.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="phancach">
    </div>

    <footer class="footer">      
        <div class="grid">
            <div class="grid__row">
                <div class="grid__column-24">
                    <h2 class="footer__heading">LIÊN HỆ</h2>
                    <ul class="footer__list">
                        <li class="footer__item">
                            <i class="footer__item-icon fa-solid fa-location-dot"></i> 370 Thái Hà, P. Trung Liệt, Q. Đống Đa, Hà Nội
                        </li>
                        <li class="footer__item">
                            <i class="footer__item-icon fa-solid fa-envelope"></i> cskh@greyb.vn
                        </li>
                        <li class="footer__item">
                            <i class="footer__item-icon fa-solid fa-phone"></i> 0988 62 3060
                        </li>
                    </ul>
                </div>
                <div class="grid__column-24">
                    <h2 class="footer__heading">VỀ GREY.B</h2>
                    <ul class="footer__list">
                        <li class="footer__item"><a href="https://greyb.vn/ve-chung-toi-nc9550.jsp" class="footer__item-link">Giới thiệu</a></li>
                        <li class="footer__item"><a href="https://greyb.vn/grey.b-tuyen-dung-n93851.jsp" class="footer__item-link">Tuyển dụng</a></li>
                    </ul>
                </div>
                <div class="grid__column-24">
                    <h2 class="footer__heading">Chính sách</h2>
                    <ul class="footer__list">
                        <li class="footer__item"><a href="https://greyb.vn/chinh-sach-giao-hang-n82741.jsp" class="footer__item-link">Chính sách giao hàng</a></li>
                        <li class="footer__item"><a href="https://greyb.vn/chinh-sach-doi-hang-n48540.jsp" class="footer__item-link">Chính sách đổi trả</a></li>
                        <li class="footer__item"><a href="https://greyb.vn/chinh-sach-thanh-toan-n82742.jsp" class="footer__item-link">Chính sách thanh toán</a></li>
                        <li class="footer__item"><a href="https://greyb.vn/huong-dan-mua-hang-online-n82740.jsp" class="footer__item-link">Hướng dẫn mua hàng</a></li>
                    </ul>
                </div>
                <div class="grid__column-24">
                    <h2 class="footer__heading">Theo dõi</h2>
                    <ul class="footer__list">
                        <li class="footer__item"><a href="https://www.facebook.com/profile.php?id=100026940495915" class="footer__item-link">
                                <i class="footer__item-icon fa-brands fa-facebook"></i> Facebook
                            </a></li>
                        <li class="footer__item"><a href="https://www.instagram.com/viet.83/" class="footer__item-link">
                                <i class="footer__item-icon fa-brands fa-instagram"></i> Instagram
                            </a></li>
                        <li class="footer__item"><a href="https://www.tiktok.com/@vietkhongchoitiktok.o_o?lang=vi-VN" class="footer__item-link">
                                <i class="footer__item-icon fa-brands fa-tiktok"></i> Tiktok
                            </a></li>
                    </ul>
                </div>
            </div>
        </div>     
    </footer>
</div>
</body>
</html>