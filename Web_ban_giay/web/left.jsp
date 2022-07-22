<%-- 
    Document   : left
    Created on : Jun 12, 2022, 3:17:25 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="content-left">
    <nav class="catenory">
        <h3 class="catenory__heading">
            <i class="fa-solid fa-list"></i>
            Danh mục
        </h3>
        <ul class="catenory-list">
            <c:forEach items="${listCat}" var="o">
                <li class="catenory-item extend" style="background-color: #ddd;">
                    <a href="category?cid=${o.cid}" class="catenory-item__link">${o.cname}</a>
                </li>
            </c:forEach>
        </ul>

    </nav>
</div>
