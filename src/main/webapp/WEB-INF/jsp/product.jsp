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
<h3>
    <a href="/create" class="btn btn-primary">Create new product</a>
</h3>
<div layout:fragment="content" class="row">
    <div class="col-xs-8 col-md-8">
        <h2>Product List</h2>
        <div class="table-responsive">
            <table class="table" id="product-table">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Image URL</th>
                </tr>
                </thead>
                <tbody>
                <tr th:each="product : ${products}">
                    <td th:text="${product.name}"><a href="/show/' + ${product.id}}">${product.name}</a></td>
                    <td th:text="${product.description}">${product.description}</td>
                    <td th:text="${product.price}">${product.price}</td>
                    <td th:text="${product.category}">${product.category}</td>
                    <td th:text="${product.imageUrl}">${product.imageUrl}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>