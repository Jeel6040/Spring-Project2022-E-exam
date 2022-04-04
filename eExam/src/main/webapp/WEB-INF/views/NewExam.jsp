<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Exam</title>
</head>
<body>
	<h2>New Exam</h2>
	<form action="saveexam" method="post">
		Exam Name : <input type="text" name="examName" /><br><br>
		Description : <input type="text" name="description"/><br><br>
		Marks Per Question : <input type="number" name="marksperquestion"/><br><br>
		Total No. Of Questions : <input type="number" name="totalnoofquestions"/><br><br>
		<label for="exam active">Exam Active : </label> 
			<select name="examactive" id="examactive">
			<option value="choose" selected disabled hidden="choose">Choose Here</option>
			<option value="1">Yes</option>
			<option value="0">No</option>
		</select><br>
		
		<input type="submit" value="Add Course" />
	
	</form>
</body>
</html>