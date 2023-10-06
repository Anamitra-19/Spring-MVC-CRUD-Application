<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table">
					<thead class="thead-dark">
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
								<td class="font-weight-bold">&#8377;${p.price }</td>
								<td>
									<a href="delete/${p.id }">
									<i class="fa fa-trash text-danger"aria-hidden="true"
									style="font-size:30px"></i> </a>
									
									<a href="update/${p.id }">
									<i class="fa fa-pen-nib text-success"aria-hidden="true"
									style="font-size:30px"></i> </a>
									
								 </td>
										
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>

		</div>

	</div>
</body>
</html>
