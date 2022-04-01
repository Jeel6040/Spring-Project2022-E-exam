<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Roles</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>

<body>
	<div id="pcoded" class="pcoded iscollapsed">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
		

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					

					<div class="pcoded-content">

						
						<div class="pcoded-inner-content">

							<div class="main-body">
								<div class="page-wrapper">

									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-header">
														<h5>Default Ordering</h5>

													</div>
													<div class="card-block">
														<div class="dt-responsive table-responsive">
															<div id="order-table_wrapper"
																class="dataTables_wrapper dt-bootstrap4">
																<div class="row">
																	<div class="col-xs-12 col-sm-12">
																		<table border="1" "listRoles" class="table table-striped">
																			<thead>
																				<tr role="row">
																					<th>RoleId</th>
																					<th>RoleName</th>
																					<th>Action</th>
																				</tr>
																			</thead>
																			<tbody>


																				<c:forEach items="${roles}" var="role">
																					<tr>
																						<td>${role.roleId}</td>
																						<td>${role.roleName}</td>
																						<td><a href="deleterole/${role.roleId}">Delete</a>
																							| <a href="editrole?roleId=${role.roleId}">Edit</a>
																						</td>
																					</tr>
																				</c:forEach>



																			</tbody>

																		</table>
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
					<!-- pcoded-wrapper -->
				</div>
				<!-- pcoded-main-container -->
			</div>
			<!-- pcoded-navwrap -->
		</div>
		<!--  pcoded -->



		<jsp:include page="AllJs.jsp"></jsp:include>

		<script type="text/javascript">
			$(document).ready(function() {
				$('#listRoles').DataTable();
			});
		</script>
</div>
</body>
</html>