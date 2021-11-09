<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="/css/main.css"/>
		<title>${language.name}</title>
	</head>
	<body>
		<div class="w-50 container">
			<br>
			<h2 class="bg-primary text-white p-3 font-weight-light">Edit ${language.name}</h2>
			<br>
			<form:form action="/languages/${ language.id }" method="post" modelAttribute="language">
				<input type="hidden" name="_method" value="put">
			    <div class="form-group">
			        <form:label path="name"><strong>Language Name:</strong></form:label>
			        <form:errors path="name"/>
			        <form:input class="form-control" path="name"/>
			    </div>
			    <div class="form-group">
			        <form:label path="creator"><strong>Creator:</strong></form:label>
			        <form:errors path="creator"/>
			        <form:input class="form-control" path="creator"/>
			    </div>
				<div class="form-group">
			        <form:label path="version"><strong>Version:</strong></form:label>
			        <form:errors path="version"/>
			        <form:input class="form-control" path="version"/>
			    </div>
			    <br>
			   	<input class="btn btn-outline-info" type="submit" value="Submit"/>
			</form:form>
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