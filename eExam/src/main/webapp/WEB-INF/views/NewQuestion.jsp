<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Question</title>
</head>
<body>
	<form action="savequestion" method="post">	
		
		CourseName : <select name="courseId">
				<option>---Select Course---</option>
				
				<c:forEach items="${course}" var="course">
					<option value="${course.courseId}">${course.courseName}</option>
				</c:forEach>
			</select><br><br>
		Question : <input type="text" name="question"/><br><br>
		Option1 : <input type="text" name="option1"/><br><br>
		Option2 : <input type="text" name="option2"/><br><br>
		Option3 : <input type="text" name="option3"/><br><br>
		Option4 : <input type="text" name="option4"/><br><br>
		Correct Answer : <input type="text" name="correctAns"/><br><br>
		
		<input type="submit" value="Add Question"/>
		
	</form>
</body>
</html>