<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Course</title>
</head>
<body>

	<h2>New Course</h2>
	<form action="savecourse" method="post">
		CourseName : <input type="text" name="courseName" /><br>
		<br> <label for="course active">Course Active : </label> 
			<select name="courseactive" id="courseactive">
			<option value="choose" selected disabled hidden="choose">Choose Here</option>
			<option value="yes">Yes</option>
			<option value="no">No</option>
		</select><br>
		Description : <input type="text" name="description"/><br>
		<br> <input type="submit" value="Add Course" />
	
	</form>
</body>
</html>