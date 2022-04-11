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

	<div>		
		<c:forEach items="${question}" var="q">

				<br>Question : ${q.question}<br> <br>
					Option1:  ${q.option1 }<br> <br> 
					Option2:  ${q.option2 }<br> <br> 
					Option3:  ${q.option3 }<br> <br> 
					Option4:  ${q.option4 }<br> <br>
					Your Answer: "${userexamans.userAns}?questionId=${userexamans.questionId }"<br><br>
					Correct Answer: ${q.correctAns }<br><br>				
			
		</c:forEach>

	</div>
	
</body>
</html>