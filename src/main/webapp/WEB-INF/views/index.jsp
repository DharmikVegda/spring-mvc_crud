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
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${product }" var="p">
				<tr>
					<th scope="row">${p.id }</th>
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td>${p.price }</td>
				</tr>
			</c:forEach>	
			</tbody>
		</table>
		<div class="text-center"><a href="add-product" class="btn btn-success">Add Product</a></div>
	</div>
</body>
</html>
