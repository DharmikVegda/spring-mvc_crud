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
		<form action="handle-product" method="post">
			<div class="mb-3 form-check">
				<label for="id" class="form-label">Id</label> <input
					type="number" class="form-control" name="id" />
			</div>
			<div class="mb-3">
				<label for="name" class="form-label">Product Name</label> <input
					type="text" class="form-control" name="name" />
			</div>
			<div class="mb-3">
				<label for="description" class="form-label">Description</label> <input
					type="text" class="form-control" name="description" />
			</div>
			<div class="mb-3 form-check">
				<label for="price" class="form-label">Price</label> <input
					type="number" class="form-control" name="price" />
			</div>
			<div class="text-center">
				<a href="${pageContext.request.contextPath}/" class="btn btn-danger">Back</a>
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>

</body>
</html>