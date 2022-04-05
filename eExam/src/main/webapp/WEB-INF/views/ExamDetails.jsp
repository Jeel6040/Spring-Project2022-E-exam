<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Details</title>
</head>
<body>
	
	<table border="1">
		<tr>
			<th>ExamId</th>
			<th>ExamName</th>
			<th>Description</th>
			<th>MarksPerQuestion</th>
			<th>TotalNoOfQuestions</th>
			<th>ExamActive</th>
		</tr>

			<tr>
				<td>${exam.examId}</td>
				<td>${exam.examName}</td>
				<td>${exam.description}</td>
				<td>${exam.marksPerQuestion}</td>
				<td>${exam.totalNumOfQuestions}</td>
				<td>${exam.examActive}</td>
				
			</tr>

	</table>
</body>
</html>