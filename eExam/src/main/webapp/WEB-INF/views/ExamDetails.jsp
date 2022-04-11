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
	
	<br>Questions<br>
	
	<table border="1">
		<tr>
			<th>QuestionId</th>
			<th>Question</th>
			<th>Option1</th>
			<th>Option2</th>
			<th>Option3</th>
			<th>Option4</th>
			<th>CorrectAns</th>
		</tr>

		<c:forEach items="${question}" var="q">
			<tr>
				<td>${q.questionId}</td>
				<td>${q.question}</td>
				<td>${q.option1}</td>
				<td>${q.option2}</td>
				<td>${q.option3}</td>
				<td>${q.option4}</td>
				<td>${q.correctAns}</td>
			</tr>
		</c:forEach>

	</table>
	
</body>
</html>