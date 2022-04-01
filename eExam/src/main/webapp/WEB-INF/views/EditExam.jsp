<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Exam</title>
</head>
<body>
	<form action="updateexam" method="post" >
		<input type="hidden" value="${exam.examId}" name="examId"/>
		
		ExamName : <input type="text" name="examName" value="${exam.examName }"/><br><br>
		Description : <input type="text" name="description" value="${exam.description }"/><br><br>
		MarksPerQuestion : <input type="number" name="marksPerQuestion" value="${exam.marksPerQuestion }"/><br><br>
		TotalNumOfQuestions : <input type="number" name="totalNumOfQuestions" value="${exam.totalNumOfQuestions }"/><br><br>
		<label for="exam active">Exam Active : </label> 
			<select name="examactive" id="examactive">
				<option value="choose" selected disabled hidden="choose">Choose Here</option>
				<option value="yes">Yes</option>
				<option value="no">No</option>
			</select><br><br>
		
		<input type="submit" value="Update Exam"/>
	</form>
</body>
</html>