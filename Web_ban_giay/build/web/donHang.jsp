<%-- 
    Document   : donHang
    Created on : Jun 13, 2022, 5:49:17 PM
    Author     : Than Dep Zai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.HoaDonDAO" %>
<%@page import="entity.ChiTietDon" %>
<%@page import="entity.HoaDon" %>
<%@page import="java.util.ArrayList" %>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi Tiết Đơn Hàng</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="./assets/fonts/fontawesome-free-6.1.1-web/fontawesome-free-6.1.1-web/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/css/ctsp.css">
        <link rel="stylesheet" href="./assets/css/gioHang.css">
        <title>JSP Page</title>
    </head>
    <body>
    <div class="app">
        <header class="header">
            <jsp:include page="Layout.jsp"></jsp:include>
        </header>
        <div class="content grid ">
            <div class="content__up">
                <%
                    String userName = request.getParameter("user");
                    int oder_id = Integer.parseInt(request.getParameter("order"));
                    String model = request.getParameter("model");
                    
                    int check;
                    if(model==null){
                        check = 0;
                    }else{
                        check = Integer.parseInt(model);
                    }
                    String name="default";
                    String address="default";
                    String phone="default";
                    int sumAmount = 1;
                    int sumTotal = 1;
                    if(check==1){
                        ArrayList<HoaDon> list_shoes1 = new HoaDonDAO().getXacNhan(userName,oder_id);
                        for(HoaDon i:list_shoes1){
                            sumAmount = i.getSum_amount();
                            sumTotal = i.getSum_total();
                        }
                    }
                    else{
                        ArrayList<HoaDon> list_shoes1 = new HoaDonDAO().getHoaDon(userName,oder_id);
                        for(HoaDon i:list_shoes1){
                            sumAmount = i.getSum_amount();
                            sumTotal = i.getSum_total();
                        }
                    }
                    ArrayList<ChiTietDon> list_shoes = new HoaDonDAO().getChiTiet(userName,oder_id);
                    for(ChiTietDon i:list_shoes){
                        name = i.getName_user();
                        address = i.getAddress();
                        phone = i.getPhone();
                    }
                    
                %>
                <div class="Information_bill">
                    <div class="bill"><h1>Hóa Đơn</h1></div>
                    <div class="name">Họ Và Tên: <%=name%></div>
                    <div class="address">Địa Chỉ: <%=address%></div>
                    <div class="phone">Số điện Thoại: <%=phone%></div>
                </div>
                <div class="line"></div> 
                <div class="h1">
                    <div class="t1">Sản phẩm</div>
                    <div class="t2">Tên sản phẩm</div>
                    <div class="t3">Số lượng</div>
                    <div class="t3">Thành tiền</div>
                </div>
                <div class="line"></div>
                <%
                    for(ChiTietDon i:list_shoes){
                %>
                <div class="h1">  
                    <div class="c1">
                    <!-- display img -->
                    <img src="<%=i.getImg()%>">
                    </div>
                    <div class="c2"><%=i.getName_shoes()%></div>
                    <div class="c3"><%=i.getAmount()%></div>
                    <div class="c3"><%=i.getTotal()%> </div>      

                </div>
                <div class="line"></div>
                <%
                    }
                %>

            <div class="line"></div>    
            <div class="row">
                <div class="row-left">Tổng sản phẩm: <%=sumAmount%></div>
            </div>
            <div class="row">
                <div class="row-left">Tổng tiền: <%=sumTotal%></div>
            </div>   
        </div>
            <div class="button-back">
                <a href="Home" class="btn btn-warning">Quay Lại</a>
            </div>
        </div>    
    </div>
</body>
</html>
