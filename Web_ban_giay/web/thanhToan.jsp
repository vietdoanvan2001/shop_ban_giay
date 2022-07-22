<%-- 
    Document   : thanhToan
    Created on : Jun 13, 2022, 10:58:22 AM
    Author     : Than Dep Zai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh Toán</title>
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-6.1.1-web/fontawesome-free-6.1.1-web/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/gioHang.css">
</head>
<body>
    <div class="app">
        <header class="header">
            <jsp:include page="Layout.jsp"></jsp:include>            
        </header>
        <div class="content__down" style="width: 75%; padding-left: 25%; " >
                <%
                    String userName = request.getParameter("user");
                    String amount = request.getParameter("amount");
                    String total = request.getParameter("total");
                %>
                <div class="line"></div>
                <h1 class="content__down-name">Hóa đơn</h1>
                <div class="line"></div>       
                <div class="row">
                    <div class="row-left">Tổng sản phẩm:</div>
                    <div class="row-right"><%=amount%></div>
                </div>
                <div class="row">
                    <div class="row-left">Tổng tiền:</div>
                    <div class="row-right"><%=total%></div>
                </div>   
                <div class="line"></div>
            <form action = "ThanhToan?user=<%=userName%>&amount=<%=amount%>&total=<%=total%>" method = "post">
            <div>
                <div class="auth-form__group">
                    <h1 class="content__down-name">Điền thông tin</h1>
                    <input id="name" name="name" type="text" class="auth-form__input" placeholder="Nhập họ và tên người nhận">
                    <input id="phone" name="phone" type="text" class="auth-form__input" placeholder="Nhập số điện thoại">
                    <input id="address" name="address" type="text" class="auth-form__input" placeholder="Nhập địa chỉ nhận hàng">
                </div>
                <div>
                    <button class="btn btn-danger btn-sm">Thanh Toán</button>
                </div>
            </div>      
            </form>    
     </div>    
    </div>
        <footer class="footer">      
            <jsp:include page="footer.jsp"></jsp:include>              
        </footer>
    </div>
</body>
</html>
