<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

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
                            <h2>Quản lí <b>tài khoản</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên đăng nhập</th>
                            <th>IsSell</th>
                            <th>IsAdmin</th>
                        </tr>
                    </thead>
                    <tbody> 
                        <c:forEach items="${listAccount}" var="o">
                            <form action="updateAccount" method="post">
                            <tr>
                                <td><input name="id" value="${o.id}" type="text" class="form-control" readonly style="width: 41px"></td>
                                <td>${o.user}</td>
                                <td>
                                    <input name="issell" type="number" id="quantity" value="${o.isSell}" min="0" max="1"><br><br>
                                </td>
                                <td>
                                    <input name="isadmin" type="number" id="quantity" value="${o.isAdmin}" min="0" max="1"><br><br>
                                </td>
                                <td>
                                    <button class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
                                </td>

                                <td>
                                    <a href="deleteAccount?aid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </form>
                    </c:forEach>

                    </tbody>
                </table>
                <div class="clearfix">

                </div>
            </div>
            <a href="#"><a href="Home" type="button" class="btn btn-primary">Quay lại</a>

        </div>
    </a>
    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>