<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Question</title>
</head>
<body>
	<form action="updatequestion" method="post" >
		<input type="hidden" value="${question.questionId}" name="questionId"/>
		
		Question : <input type="text" name="question" value="${question.question }"/><br><br>
		CorrectAns : <input type="text" name="correctAns" value="${question.correctAns }"/><br><br>
		Option1
		Option2
		Option3
		Option4
		
		<input type="submit" value="Update Question"/>
	</form>
</body>
</html>