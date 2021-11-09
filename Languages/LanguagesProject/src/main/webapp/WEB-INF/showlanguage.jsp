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
		<title>${language.name}</title>
	</head>
	<body>
		<div class="w-50 container">
			<br>
			<h2 class="bg-primary text-white p-3 font-weight-light"><c:out value="${language.name}"/></h2>
			<br>
			<p><strong>Creator:</strong> <c:out value="${language.creator}"/></p>
			<p><strong>Version:</strong> <c:out value="${language.version}"/></p>
			<br>
			<div>
				<a class="btn btn-outline-info" href="${language.id}/edit">Edit</a>
			</div>
			<div class="d-flex justify-content-end">
				<div class="p-2">
					<a class="btn btn-outline-primary" href="/languages/">Dashboard</a>
				</div>
				<div class="p-2">
				<form id="delete-form" action="/languages/${language.id}" method="post">
					<input type="hidden" name="_method" value="delete">
					<input class="btn btn-outline-danger" type="submit" value="Delete">
				</form>
				</div>
			</div>
		</div>
	</body>
</html>


