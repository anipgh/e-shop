<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>
<body>
<div>
    <h3>${pageContext.request.userPrincipal.name}</h3>
    <sec:authorize access="!isAuthenticated()">
        <h4><a href="/login">Sign In</a></h4>
        <h4><a href="/registration">Sign Up</a></h4>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <h4><a href="/logout">Sign out</a></h4>
    </sec:authorize>
    <h4><a href="/products">Products(only user)</a></h4>
    <h4><a href="/admin">Users(Only admin)</a></h4>
</div>
</body>
</html>