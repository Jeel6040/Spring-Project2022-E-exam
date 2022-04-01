<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Questions List</title>
</head>
<body>
	<h2>Questions List</h2>

	<table border="1">
		<tr>
			<th>QuestionId</th>
			<th>Question</th>
			<th>CorrectAns</th>
			<th>Option1</th>
			<th>Option2</th>
			<th>Option3</th>
			<th>Option4</th>
		</tr>

		<c:forEach items="${questions}" var="q">
			<tr>
				<td>${q.questionId}</td>
				<td>${q.question}</td>
				<td>${q.correctAns}</td>
				<td>${q.option1}</td>
				<td>${q.option2}</td>
				<td>${q.option3}</td>
				<td>${q.option4}</td>
				<td><a href="deletequestion?questionId=${q.questionId}">Delete</a> 
					| <a href="editquestion?questionId=${q.questionId}">Edit</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>