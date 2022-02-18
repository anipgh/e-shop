<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html lang="en"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorator="default">
<head>
    <title>Product List</title>
</head>
<body>
<div layout:fragment="content" class="row">
    <div class="col-xs-8 col-md-8">
        <h3>
            <a href="/create" class="btn btn-primary"><span class="glyphicon glyphicon-plus-sign"></span> Product</a>
        </h3>
        <h2>Product List</h2>
        <div class="table-responsive">
            <table class="table" id="product-table">
                <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Product Desc</th>
                    <th>Product Price</th>
                </tr>
                </thead>
                <tbody>
                <tr th:each="product : ${products}">
                    <td><a th:text="${product.prodName}" th:href="@{'/show/' + ${product.id}}"></a></td>
                    <td th:text="${product.prodDesc}"></td>
                    <td th:text="${product.prodPrice}"></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>