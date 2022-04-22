<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.UserBean"%>
<%@page import="com.bean.ExamBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <script data-ad-client="ca-pub-4529508631166774" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student Exam Details</title>

    <jsp:include page="AllCss.jsp"></jsp:include>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
<jsp:include page="AdminSideBar.jsp"></jsp:include>
               <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
<jsp:include page="AdminHeader.jsp"></jsp:include>
                <!-- Begin Page Content -->
                <div class="container-fluid">
                   
                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Exam Details</h1>
<p class="alert-success">${success }</p>
                    <!-- DataTales Example -->
                    <span id="message"></span>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        	<div class="row">
                            	<div class="col">
                            		<h6 class="m-0 font-weight-bold text-primary">  </h6>
                            	</div>
                            	<div class="col" align="right">
                                  <!-- Button trigger modal -->
                                 
                            		
                            	</div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
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

                            </div>
                        </div>
                    </div>

                                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; E-exam 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">�</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="AllJs.jsp"></jsp:include>
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
						console.log(ua);
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
			
			$.ajax({
				url:"generateFinalResult?examId="+examId,
				type:"get",
				success:function(data){
					
				}
			});
			alert("exam submited please view result");
			window.location="/resultlist";
 		}//save ans 
	</script>

<script type="text/javascript">
			$(document).ready(function() {
				$('#subjecttable').DataTable();
			});
			
	
		</script>
</body>

</html>