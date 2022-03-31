<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam List</title>
</head>
<body>
	<h2>Exam List</h2>

	<table border="1">
		<tr>
			<td>ExamId</td>
			<td>ExamName</td>
			<td>Description</td>
			<td>MarksPerQuestion</td>
			<td>TotalNoOfQuestions</td>
			<td>ExamActive</td>
		</tr>

		<c:forEach items="${exam}" var="e">
			<tr>
				<td>${e.examid}</td>
				<td>${e.examname}</td>
				<td>${e.description}</td>
				<td>${e.marksperquestion}</td>
				<td>${e.totalnoofquestions}</td>
				<td>${e.examactive}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>