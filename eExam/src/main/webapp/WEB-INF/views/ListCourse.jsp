<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Course List</h2>

	<table border="1">
		<tr>
			<td>CourseId</td>
			<td>CourseName</td>
			<td>IsActive</td>
			<td>Description</td>
			
		</tr>

		<c:forEach items="${course}" var="c">
			<tr>
				<td>${c.courseId}</td>
				<td>${c.courseName}</td>
				<td>${c.isActive}</td>
				<td>${c.description}</td>
				
			</tr>
		</c:forEach>

	</table>
</body>
</html>