<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students ListExams</title>
</head>
<body>
	${error }
	<table border="1">
		<tr>
			<th>ExamId</th>
			<th>ExamName</th>
			<th>Description</th>
			<th>MarksPerQuestion</th>
			<th>TotalNoOfQuestions</th>
			<th>ExamActive</th>
		</tr>

		<c:forEach items="${exam}" var="e">
			<tr>
				<td>${e.examId}</td>
				<td>${e.examName}</td>
				<td>${e.description}</td>
				<td>${e.marksPerQuestion}</td>
				<td>${e.totalNumOfQuestions}</td>
				<td>${e.examActive}</td>
				<td><a href="studentexamdetails?examId=${e.examId}">Start Exam</a>
				</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>