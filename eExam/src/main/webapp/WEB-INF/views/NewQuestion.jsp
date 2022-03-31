<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Question</title>
</head>
<body>
	<form action="savequestion" method="post">	
		
		Question Id : <input type="number" name="questionId"/><br><br>
		Question : <input type="text" name="question"/><br><br>
		Correct Answer : <input type="text" name="correctAns"/><br><br>
		Option1 :
		Option2 :
		Option3 :
		Option4 :
		<input type="submit" value="Add Question"/>
		
	</form>
</body>
</html>