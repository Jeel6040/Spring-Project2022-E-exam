<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Course</title>
</head>
<body>
	<form action="updatecourse" method="post" >
		<input type="hidden" value="${course.courseId}" name="courseId"/>
		
		CourseName : <input type="text" name="courseName" value="${course.courseName }"/><br><br>
		Description : <input type="text" name="description" value="${course.description }"/><br><br>
		<label for="course active">Course Active : </label> 
			<select name="courseactive" id="courseactive">
				<option value="choose" selected disabled hidden="choose">Choose Here</option>
				<option value="yes">Yes</option>
				<option value="no">No</option>
			</select><br><br>
		
		<input type="submit" value="Update Course"/>
	</form>
</body>
</html>