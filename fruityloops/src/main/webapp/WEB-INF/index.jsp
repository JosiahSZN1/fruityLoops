<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Fruity Loops</title>
</head>
<body>
	<div class="container border">
	<!-- use random Bootstrap styling in HTML class elements because you are still learning how to use it because one day it will make your life so much easier -->
		<h1 class="text-success">Fruit Store</h1>
		<!--  This hover feature is pretty cool, highlights each row as your cursor hovers over it-->
		<table class="table table-hover">
			<tbody>
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>
				<!-- c:forEach to access all objects in the ArrayList in view model -->
				<c:forEach var="fruit" items="${allFruits}">
				<!-- create a new row with name and price -->
        		<tr>
        			<td>
        			<!-- access values of each object using dot notation. They keys for each value if you remember correctly is in the Item class in the models package -->
        				<c:out value="${fruit.name}"></c:out>
        			</td>
        			<td>
        				<c:out value="${fruit.price}"></c:out>
        			</td>
        		</tr>
    			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>