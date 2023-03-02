<%@include file="base.jsp" %>
<%@ page isELIgnored="false" %>

<html>
<body>
	<div class="container mt-5 mb-3">
		<h2 class="text-center">Welcome to Product App</h2>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Product Name</th>
					<th scope="col">Description</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${product }" var="p">
				<tr>
					<th scope="row">${p.id }</th>
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td class="fw-bold">&#8377 ${p.price }</td>
					<td>
						<a href="delete-product/${p.id }"> <i class="bi bi-trash3-fill text-danger"></i> </a>
						<a href="update-product/${p.id }"> <i class="bi bi-pen-fill text-primary ms-2"></i> </a>
					</td>
				</tr>
			</c:forEach>	
			</tbody>
		</table>
		<div class="text-center"><a href="add-product" class="btn btn-success">Add Product</a></div>
	</div>
</body>
</html>
