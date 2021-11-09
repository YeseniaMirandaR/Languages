<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" 
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="/css/main.css" />
		<title>Languages</title>
	</head>
	<body>
		<div class="w-50 container">
			<br>
			<h2 class="bg-primary text-white p-3 font-weight-light">Languages Dashboard</h2>
			<br>
			<table class="table table-borderless">
				<thead class="thead-light">
					<tr>
						<th>Name</th>
						<th>Creator</th>
						<th>Version</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${languages}" var="lang">
					<tr>
						<td><a href="${lang.id }">${lang.name}</a></td>
						<td>${lang.creator}</td>
						<td>${lang.version}</td>
						<td class="d-flex">
							<div class="p-1">
								<a class="btn btn-outline-primary" href="${lang.id}/edit">Edit</a>
							</div>
							<div class="p-1">
								<form id="delete-form" action="${lang.id}" method="post">
								    <input type="hidden" name="_method" value="delete">
								    <input class="btn btn-outline-danger" type="submit" value="Delete">
								</form>
							</div>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<a href="/languages/new" class="ml-auto p-2 btn btn-primary text-center">Add a language</a>
		</div>
	</body>
</html>