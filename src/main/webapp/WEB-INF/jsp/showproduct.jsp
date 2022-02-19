<!DOCTYPE HTML>
<html lang="en"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorator="default">
<head>
    <title>Show Product</title>
</head>
<body>
<div layout:fragment="content" class="row">
    <div class="col-xs-8 col-md-8">
        <h3>
            <a href="/product" class="btn btn-primary"><span class="glyphicon glyphicon-list"></span> Product</a>
        </h3>
        <h2 th:text="${product.name}"></h2>
        <h2><img src="${product.imageUrl}" width="200" /></h2>
        <dl class="list">
            <dt>Product Description</dt>
            <dd >${product.description}</dd>
            <dt>Product Price</dt>
            <dd >${product.price}</dd>
            <dt>Product Category</dt>
            <dd >${product.category}</dd>
        </dl>
        <form action="/delete" method="post">
            <input type="hidden" name="id" value="${product.id}" />
            <h2><input type="submit" class="btn btn-danger" value="Delete" onclick="return confirm('Are you sure?');" />
                </h2>
        </form>
        <a href="/edit/${product.id}" class="btn btn-warning">Edit</a>
    </div>
</div>
</body>
</html>