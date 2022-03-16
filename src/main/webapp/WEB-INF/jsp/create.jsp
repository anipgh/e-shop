<!DOCTYPE HTML>
<html lang="en"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorator="default">
<head>
    <title>Create Product</title>
</head>
<body>
<div layout:fragment="content" class="row">
    <div class="col-xs-8 col-md-8">
      
        <h2>Create Product</h2>
        <form action="/save" method="post">
            <div class="form-group">
                <label for="name">Product Name:</label>
                <input type="text" class="form-control" name="name" value="${product.name}"/>
            </div>
            <div class="form-group">
                <label for="description">Product Description</label>
                <textarea class="form-control" name="description" cols="60" rows="3">${product.description}</textarea>
            </div>
            <div class="form-group">
                <label for="price">Product Price</label>
                <input type="number" class="form-control" name="price" value="${product.price}"/>
            </div>
            <div class="form-group">
                <label for="imageUrl">Product Image URL:</label>
                <input type="url" class="form-control" name="imageUrl"  value="${product.imageUrl}"/>
            </div>
            <div class="form-group">
                <label for="category">Product Category:</label>
                <input type="text" class="form-control" name="category"  value="${product.category}"/>
            </div>
            <button type="submit" class="btn btn-success">Save</button>
        </form>
    </div>
</div>
</body>
</html>
