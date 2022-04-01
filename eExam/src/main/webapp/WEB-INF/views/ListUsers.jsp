<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<h2>List Users</h2>

	<table border="1">

		<tr>
			<th>UserId</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>ContactNo</th>
			<th>Gender</th>
			<th>Password</th>
			<th>RoleId</th>
			<th>Action</th>
		</tr>

		<c:forEach items="${users}" var="u">
			<tr>
				<td>${u.userId}</td>
				<td>${u.firstName}</td>
				<td>${u.lastName}</td>
				<td>${u.email}</td>
				<td>${u.contactNo}</td>
				<td>${u.gender}</td>
				<td>${u.password}</td>
				<td>${u.roleName}</td>
				<td><a href="deleteuser?userId=${u.userId}">Delete</a> 
				| <a href="edituser?userId=${u.userId}">Edit</a></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>