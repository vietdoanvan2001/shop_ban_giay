<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
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
            <div class="body-page">
                <table class="admin-page">
                    <tr>
                        <th><a href="TinhTrangDon?user=${sessionScope.user}&chose=1">Đơn Hàng Chưa Xác Nhận</a> </th>
                        <th><a href="TinhTrangDon?user=${sessionScope.user}&chose=2">Đơn Hàng Đã Xác Nhận</a> </th>
                    </tr>
                    <tr >
                        <th>${HD}</th>
                        <th>${XN}</th>
                    </tr>
                </table>
            </div>
            <c:if test ="${title==1}">
                <table class="admin-page">
                    <tr>
                        <th>
                            <h1>Đơn Hàng Chưa Xác Nhận<h1>
                        </th>
                    </tr>
                </table>
                <table class="admin-page">
                        
                    <thead>
                        <tr>
                            <th>Mã đơn hàng</th>
                            <th>Tài Khoản</th>
                            <th>Số lượng sản phẩm</th>
                            <th>Tổng số tiền</th>
                            <th>Chi tiết đơn hàng</th>
                        </tr>
                    </thead>
                    <thead>
                        <c:forEach items ="${listHD}" var ="i">
                            <tr>
                                <th>${i.getOrder_id()}</th>
                                <th>${i.getUser()}</th>
                                <th>${i.getSum_amount()}</th>
                                <th>${i.getSum_total()}</th>
                                <form action = "donHang.jsp?user=${i.getUser()}&order=${i.getOrder_id()}" method = "post">
                                    <th><input type="submit" value="Chi tiết đơn hàng"/></th>
                                </form>
                            </tr>
                        </c:forEach>
                    </thead>
                </table>
            </c:if>                
            <c:if test ="${title==2}">
                <table class="admin-page">
                    <tr>
                        <th>
                            <h1>Đơn Hàng Đã Xác Nhận<h1>
                        </th>
                    </tr>
                </table>
                <table class="admin-page">
                    <thead>
                        <tr>
                            <th>Mã đơn hàng</th>
                            <th>Tài Khoản</th>
                            <th>Số lượng sản phẩm</th>
                            <th>Tổng số tiền</th>
                            <th>Chi tiết đơn hàng</th>
                        </tr>
                    </thead>
                    <thead>
                        <c:forEach items ="${listXN}" var ="i">
                            <tr>
                                <th>${i.getOrder_id()}</th>
                                <th>${i.getUser()}</th>
                                <th>${i.getSum_amount()}</th>
                                <th>${i.getSum_total()}</th>
                                <form action = "donHang.jsp?user=${i.getUser()}&order=${i.getOrder_id()}&model=1" method = "post">
                                    <th><input type="submit" value="Chi tiết đơn hàng"/></th>
                                </form>
                            </tr>
                        </c:forEach>
                    </thead>
                </table>
            </c:if>                  
                
        </div>
</body>
</html>