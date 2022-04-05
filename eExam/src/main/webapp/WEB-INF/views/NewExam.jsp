<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Exam</title>
</head>
<body>
	<h2>New Exam</h2>
	<form action="saveexam" method="post">
		
		Course : <select name="courseId">
				<option>---Select Course---</option>
				
				<c:forEach items="${course}" var="c">
					<option value="${c.courseId}">${c.courseName}</option>
				</c:forEach>
			</select><br><br>		
		Exam Name : <input type="text" name="examName" /><br><br>
		Description : <input type="text" name="description"/><br><br>
		Marks Per Question : <input type="number" name="marksPerQuestion"/><br><br>
		Total No. Of Questions : <input type="number" name="totalNumOfQuestions"/><br><br>
		<label for="examActive">Exam Active : </label> 
			<select name="examActive" id="examActive">
			<option value="choose" selected disabled hidden="choose">Choose Here</option>
			<option value="1">Yes</option>
			<option value="0">No</option>
		</select><br>
		
		<input type="submit" value="Add Exam" />
	
	</form>
</body>
</html>