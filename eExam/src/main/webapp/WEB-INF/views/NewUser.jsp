<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page import = "java.io.*,java.util.*,javax.servlet.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <script data-ad-client="ca-pub-4529508631166774" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>New User</title>

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
                    <h1 class="h3 mb-4 text-gray-800">User Management</h1>
<p class="alert-danger">${error }</p>
<p class="alert-success">${success }</p>
                    <!-- DataTales Example -->
                    <span id="message"></span>
                    
                    
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        
                        	<div class="row">
                            	<div class="col">
                            		<h6 class="m-0 font-weight-bold text-primary">User List</h6>
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
                                <table class="table table-bordered" id="subjecttable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
											<th>UserId</th>
											<th>FirstName</th>
											<th>LastName</th>
											<th>Email</th>
											<th>ContactNo</th>
											<th>Gender</th>
											<th>Password</th>
											<th>RoleId</th>
											
										</tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${users}" var="u">
											<tr>
												<td>${u.userId}</td>
												<td>${u.firstName}</td>
												<td>${u.lastName}</td>
												<td>${u.email}</td>
												<td>${u.contactNo}</td>
												<td>${u.gender}</td>
												<td>${u.password}</td>
												<td>${u.roleName}</td>
												<td>
			                                      	<a href="edituser?userId=${u.userId}" style="color:black;" >
			                                        <button type="button" name="editclass" class="btn btn-warning btn-circle btn-sm edit_button">
				                                 	<i class="fas fa-edit"></i>
				                                  	</button></a> 
				                                 </td>
											</tr>
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
     <!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
  <form method="post" action="saveuser">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <span id="form_message"></span>
                 
		          	<div class="form-group">
		          		FirstName : <input type="text" name="firstName"/><br><br>
						LastName : <input type="text" name="lastName"/><br><br>
						Email : <input type="email" name="email"/><br><br>
						Contact No. : <input type="number" name="contactNo"/><br><br>
						<label for="gender">Gender : </label>
						<select name="gender" id="gender">
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="others">Others</option>
						</select><br><br>
						Password : <input type="password" name="password"><br><br>
						Role : <select name="roleId">
									<option>---Select Role---</option>
									
									<c:forEach items="${role}" var="r">
										<option value="${r.roleId}">${r.roleName}</option>
									</c:forEach>
								</select><br><br>
						
					</div>
      </div>
      <div class="modal-footer">
        <input type="submit" name="submit" id="submit_button" class="btn btn-success" value="Add User" />
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
    </form>
  </div>
</div>

<script type="text/javascript">
			$(document).ready(function() {
				$('#subjecttable').DataTable();
			});
		</script>
</body>

</html>