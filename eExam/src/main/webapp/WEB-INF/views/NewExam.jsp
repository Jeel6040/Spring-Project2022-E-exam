<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
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

    <title>New Exam</title>

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
                    <h1 class="h3 mb-4 text-gray-800">Exam Management</h1>
<p class="alert-danger">${error }</p>
<p class="alert-success">${success }</p>
                    <!-- DataTales Example -->
                    <span id="message"></span>
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        	<div class="row">
                            	<div class="col">
                            		<h6 class="m-0 font-weight-bold text-primary">Exam List</h6>
                            	</div>
                            	<div class="col" align="right">
                                    <!-- Button trigger modal -->
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
                                 <i class="fas fa-plus"></i>
                                   </button>
                            		
                            	</div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="examtable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Exam Name</th>
                                            <th>Description</th>
                                            <th>Marks Per Question</th>
                                            <th>Total Number Of Questions</th>
                                            <th>Exam Active</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${exam }" var="e">
	                                      <tr>
		                                      
		                                      <td>${e.examName}</td>
		                                      <td>${e.description }</td>
		                                      <td>${e.marksPerQuestion }</td>
		                                      <td>${e.totalNumOfQuestions }</td>
		                                      <td>${e.examActive }</td>
		                                      
		                                      
                                      </c:forEach>
                                    </tbody>
                                </table>
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
                        <span aria-hidden="true">???</span>
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
     <!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form method="post" action="saveexam">
      		<div class="modal-content">
        		<div class="modal-header">
          			<h4 class="modal-title" id="modal_title">Add Exam Data</h4>
          			<button type="button" class="close" data-dismiss="modal">&times;</button>
        		</div>
        		<div class="modal-body">
        			<span id="form_message"></span>
                     <div class="form-group">
                        Course : <select name="courseId">
							<option>---Select Course---</option>
							
							<c:forEach items="${course}" var="c">
								<option value="${c.courseId}">${c.courseName}</option>
							</c:forEach>
						</select><br><br>                  
                    </div>
                    <div class="form-group">
                        <label>Exam Name</label>
                        <input type="text" name="examName" id="examName" class="form-control" required data-parsley-pattern="/^[a-zA-Z0-9 \s]+$/" data-parsley-trigger="keyup" />
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" name="description" id="description" class="form-control" required data-parsley-pattern="/^[a-zA-Z0-9 \s]+$/" data-parsley-trigger="keyup" />
                    </div>
                    <div class="form-group">
                        <label>Marks Per Question</label>
                        <input type="number" name="marksPerQuestion" id="marksPerQuestion" class="form-control" required data-parsley-pattern="/^[a-zA-Z0-9 \s]+$/" data-parsley-trigger="keyup" />
                    </div>
                    <div class="form-group">
                        <label>Total Number Of Questions</label>
                        <input type="number" name="totalNumOfQuestions" id="totalNumOfQuestions" class="form-control" required data-parsley-pattern="/^[a-zA-Z0-9 \s]+$/" data-parsley-trigger="keyup" />
                    </div>
                   
		          	
                   <label for="examActive">Exam Active : </label> 
						<select name="examActive" id="examActive">
						<option value="choose" selected disabled hidden="choose">Choose Here</option>
						<option value="1">Yes</option>
						<option value="0">No</option>
					</select><br>
                    
        		</div>
        		<div class="modal-footer">
          			
          			<input type="submit" name="submit" id="submit_button" class="btn btn-success" value="Add Exam" />
          			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        		</div>
      		</div>
    	</form>
    
  </div>
</div>


<script type="text/javascript">
			$(document).ready(function() {
				$('#examtable').DataTable();
			});
		</script>
</body>

</html>