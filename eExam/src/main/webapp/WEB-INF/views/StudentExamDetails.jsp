<%@page import="com.bean.UserBean"%>
<%@page import="com.bean.ExamBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Exam Details</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
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

	<form action="saveuserexamans" method="post">
		<%
		int i = 0;
		%>
		<c:forEach items="${question}" var="q">

			<fieldset id="group1">
				<br>Question : ${q.question} <br> <br> <input
					type="hidden" value="${q.questionId}" name="question<%=i%>"> 
					Option1: <input type="radio" name="userAns<%=i%>" value="${q.option1 }"><label id="option1">${q.option1 }</label><br> <br> 
					Option2: <input type="radio" name="userAns<%=i%>" value="${q.option2 }"><label id="option2"> ${q.option2 }</label><br> <br> 
					Option3: <input type="radio" name="userAns<%=i%>" value="${q.option3 }"><label id="option3"> ${q.option3 }</label><br> <br> 
					Option4: <input type="radio" name="userAns<%=i%>" value="${q.option4 }"><label id="option4"> ${q.option4 }</label><br> <br>
			</fieldset>
			<%
			i++;
			%>
		</c:forEach>

		<input type="button" onclick="saveAns()" value="Submit Exam Answers" />
	</form>

	<%
	ExamBean exam = (ExamBean) request.getAttribute("exam");
	%>
	<%
	UserBean user = (UserBean) session.getAttribute("user");
	%>
	<script>
		function saveAns() {
			let total =
	<%=i%>
		;
			let userAns = [];
			let examId =
	<%=exam.getExamId()%>
		;
			let userId =
	<%=user.getUserId()%>
		;
			for (let i = 0; i < total; i++) {

				let questions = document.getElementsByName("question" + i)
				let ans = document.getElementsByName("userAns" + i);
				for (let a = 0; a < 4; a++) {
					if (ans[a].checked) {
						let ua = {
							"userAns" : ans[a].value,
							"questionId" : questions[0].value,
							"examId" : examId,
							"userId" : userId
						}
						userAns.push(ua);

						$.ajax({
							url : "saveuserexamans",
							type : "post",
							data : ua,
							success : function(data, textStatus, jqXHR) {
								//data - response from server
								console.log(data);
							},
							error : function(jqXHR, textStatus, errorThrown) {
								console.log("error")
							}
						});

					}
				}
			}//main loop 
		}
	</script>
</body>
</html>