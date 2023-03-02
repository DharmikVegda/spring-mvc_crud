<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="base.jsp"%>
</head>
<body>

	<div class="container mt-5">
	    <h2 class="text-center">Change datails in below form</h2>
		<form action="${pageContext.request.contextPath }/handle-product" method="post">
			<div class="mb-3">
				<label for="id" class="form-label">Product Id</label> <input
					type="number" class="form-control" name="id" value="${product.id }" />
			</div>
			<div class="mb-3">
				<label for="name" class="form-label">Product Name</label> <input
					type="text" class="form-control" name="name" value="${product.name }" />
			</div>
			<div class="mb-3">
				<label for="description" class="form-label">Description</label> <input
					type="text" class="form-control" name="description" value="${product.description }"  />
			</div>
			<div class="mb-3">
				<label for="price" class="form-label">Price</label> <input
					type="number" class="form-control" name="price" value="${product.price }" />
			</div>
			<div class="text-center">
				<a href="${pageContext.request.contextPath}/" class="btn btn-danger">Back</a>
				<button type="submit" class="btn btn-primary">Update</button>
			</div>
		</form>
	</div>

</body>
</html>