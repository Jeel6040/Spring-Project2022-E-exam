<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Result</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>ExamId</th>
			<th>ExamName</th>
			<th>Description</th>
			<th>MarksPerQuestion</th>
			<th>TotalNoOfQuestions</th>
		</tr>

		<tr>
			<td>${exam.examId}</td>
			<td>${exam.examName}</td>
			<td>${exam.description}</td>
			<td>${exam.marksPerQuestion}</td>
			<td>${exam.totalNumOfQuestions}</td>

		</tr>

	</table>

	<div>
		<c:forEach items="${userexamans}" var="q">

			<fieldset id="group1">
				<br>Question : ${q.question}<br> <br> Option1:
				${q.option1 }<br> <br> Option2: ${q.option2 }<br> <br>
				Option3: ${q.option3 }<br> <br> Option4: ${q.option4 }<br>
				<br> Your Answer: ${q.userAns}<br>
				<br> Correct Answer: ${q.correctAns }<br>
				<br>

			</fieldset>
		</c:forEach>

	</div>

</body>
</html>