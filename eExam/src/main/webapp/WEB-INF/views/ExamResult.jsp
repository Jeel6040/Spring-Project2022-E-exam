<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Result</title>
<jsp:include page="AllCss2.jsp"></jsp:include>

</head>

<body>
	<div id="pcoded" class="pcoded iscollapsed">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="StudentHeader.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<jsp:include page="StudentSideBar.jsp"></jsp:include>

					<div class="pcoded-content">

						<div class="page-header card">
							<div class="row align-items-end">
								<div class="col-lg-8">
									<div class="page-header-title">
										<i class="feather icon-inbox bg-c-blue"></i>
										<div class="d-inline">
											<h5>Exam Schedule Details</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="studentdashboard?userId=${user.userId }"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Exams
													</a></li>
													<li class="breadcrumb-item">
													
													<a href="#!">Completed Exams
													
													
													
													</a></li>
											
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="pcoded-inner-content">

							<div class="main-body">
								<div class="page-wrapper">

									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-header">
														<h5>Completed Exams</h5>

													</div>
													<div class="card-block">
														<div class="dt-responsive table-responsive">
															<div id="order-table_wrapper"
																class="dataTables_wrapper dt-bootstrap4">
																<div class="row">
																	<div class="col-xs-12 col-sm-12">
																		<table id="listRoles" class="table table-striped" style="text-align:center;">
																			<thead>
																			<tr>
																				<th>ExamId</th>
																				<th>ExamName</th>
																				<th>Description</th>
																				<th>MarksPerQuestion</th>
																				<th>TotalNoOfQuestions</th>
																			</tr>
																	
																			<tr>
																				<td>${exam.examId}</td>
																				<td>${exam.examName}</td>
																				<td>${exam.description}</td>
																				<td>${exam.marksPerQuestion}</td>
																				<td>${exam.totalNumOfQuestions}</td>
																	
																			</tr>

																			</thead>
																		</table>

																			<div>
																				<c:forEach items="${userexamans}" var="q">
																					
																					<fieldset id="group1">
																						<br><br>
																						Question : ${q.question}<br> <br> 
																						Option1: ${q.option1 }<br> <br> 
																						Option2: ${q.option2 }<br> <br>
																						Option3: ${q.option3 }<br> <br> 
																						Option4: ${q.option4 }<br><br>
																						Your Answer: ${q.userAns}<br><br>
																						Correct Answer: ${q.correctAns }<br><br>
																						
																					</fieldset>
																					
																				</c:forEach>
																				
																			</div>
																	</div>
																</div>

															</div>
														</div>
													</div>


												</div>
											</div>
										</div>

									</div>
								</div>

								<div id="styleSelector"></div>
							</div>
						</div>


					</div>
					<!-- pcoded wrapper -->
				</div>
				<!-- pcoded main container -->
			</div>
			<!-- pcoded-navwrap -->
		</div>
		<!--  pcoded -->

</div>
 <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                
                <div>
                	<a href="resultlist">Go Back To Result List</a>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login">Logout</a>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="AllJs2.jsp"></jsp:include>
</body>
</html>