<%-- 
    Document   : gioHang
    Created on : May 30, 2022, 5:42:33 PM
    Author     : Admin
--%>
<%@page import="dao.GioHangDAO" %>
<%@page import="entity.GioHang" %>
<%@page import="java.util.ArrayList" %>
<%@page import="javax.servlet.http.HttpSession"%>
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/gioHang.css">
</head>
<body>
    <div class="app">
        <header class="header">
            <jsp:include page="Layout.jsp"></jsp:include>
        </header>

        <h1 class="content__up-name">Giỏ hàng</h1>
    <div class="container"> 
    <table id="cart" class="table table-hover table-condensed"> 
        <thead> 
        <tr> 
            <th style="width:50%">Tên sản phẩm</th> 
            <th style="width:10%">Giá</th> 
            <th style="width:8%">Số lượng</th> 
            <th style="width:22%" class="text-center">Thành tiền</th> 
            <th style="width:10%"> </th> 
        </tr> 
        </thead> 
            <%  
                String userName = request.getParameter("user");
                int tongtien = 0;
                int soluong = 0;
                ArrayList<GioHang> list = new GioHangDAO().getAllProduct(userName);
                for(GioHang i:list){
                    tongtien+=i.getTotal();
                    soluong+=i.getAmount();
                
            %>
        <tbody><tr> 
            <td data-th="Product"> 
                <div class="row"> 
                    <div class="col-sm-2 hidden-xs"><img src="<%=i.getImg()%>" alt="Sản phẩm 1" class="img-responsive" width="100"></div> 
                    <div class="col-sm-10"> 
                        <h4 class="nomargin">
                            <%=i.getName()%>
                        </h4> 
                    </div> 
                </div> 
            </td>
            <td data-th="Price"><%=i.getPrice()%></td>
        <form action="SuaGioHang?id=<%=i.getId()%>&user=<%=i.getUser()%>&price=<%=i.getPrice()%>&type=1" method="POST">
            <td data-th="Quantity"><input class="form-control text-center" value="<%=i.getAmount()%>" type="number" name = "amount"></td> 
            <td data-th="Subtotal" class="text-center"><%=i.getTotal()%></td> 
            <td class="actions" data-th="">
            <button class="btn btn-info btn-sm" style="margin-bottom: 2px;"><i class="fa fa-edit"></i></button>
        </form>
        <form action="SuaGioHang?id=<%=i.getId()%>&user=<%=i.getUser()%>&price=<%=i.getPrice()%>&type=0" method="POST">
            <button class="btn btn-danger btn-sm">Xóa</button>
        </form>           
            </td>    
            <%
                }
            %>
        </tr></tbody>
        
        <tfoot></tr>
            <td><a href="Home" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua</a></td> 
            <td colspan="2" class="hidden-xs"> </td> 
            <td class="hidden-xs text-center"><strong>Tổng tiền: <%=tongtien%> vnđ</strong></td> 
            <td>
                <a href="thanhToan.jsp?user=${sessionScope.user}&amount=<%=soluong%>&total=<%=tongtien%>" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a></td> 
            </tr> 
        </tfoot> 
    </table>
        <footer class="footer">      
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
    </div>
</body>
</html>