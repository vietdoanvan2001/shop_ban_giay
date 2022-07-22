<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>
<%@page import="entity.DonHang"%>
<%@page import="dao.DAO" %>
<%@page import="entity.DonHang" %>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Quản lí sản phẩm</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><b>Quản Lý Đơn Hàng Đã Xác Nhận</b></h2>
                        </div>
                        <div class="col-sm-6">

                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Mã đơn hàng</th>
                            <th>Tên khách hàng</th>
                            <th>Số lượng sản phẩm</th>
                            <th>Tổng số tiền</th>
                            <th>Chi tiết đơn hàng</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<DonHang> list = new DAO().getXacNhan();
                            for (DonHang i : list) {
                        %>
                        <tr>
                            <td><%=i.getMaDonHang()%></td>
                            <td><%=i.getTenKhachHang()%></td>
                            <td><%=i.getSLSanPham()%></td>
                            <td><%=i.getTongSoTien()%></td>
                    <form action = "donHang.jsp?user=<%=i.getTenKhachHang()%>&order=<%=i.getMaDonHang()%>&model=1" method = "post">
                        <td><input type="submit" value="Chi tiết đơn hàng"/></td>
                    </form>
                    <form action = "QuanLyHoaDon?user=<%=i.getTenKhachHang()%>&order=<%=i.getMaDonHang()%>&method=2&amount=<%=i.getSLSanPham()%>&total=<%=i.getTongSoTien()%>" method = "post">
                        <td><input type="submit" value="Xóa"/></td>
                    </form>
                    </tr>
                    <%}%>
                    </tbody>
                </table>
                <div class="clearfix">

                </div>
            </div>
            <a href="manager" type="button" class="btn btn-primary">Quay Lại</a>

        </div>

    </a>
    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>