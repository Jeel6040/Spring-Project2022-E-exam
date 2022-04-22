<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
<jsp:include page="AllCss2.jsp"></jsp:include>

</head>
<body themebg-pattern="theme1">
	<div id="pcoded" class="pcoded iscollapsed" nav-type="st2"
		theme-layout="vertical" vertical-placement="left"
		vertical-layout="wide" pcoded-device-type="desktop"
		vertical-nav-type="expanded" vertical-effect="shrink"
		vnavigation-view="view1" fream-type="theme1" layout-type="light">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">



			<jsp:include page="StudentHeader.jsp"></jsp:include>


			<div class="pcoded-main-container" style="margin-top: 70.3906px;">
				<div class="pcoded-wrapper">

					<jsp:include page="StudentSideBar.jsp"></jsp:include>
								<div class="pcoded-content">
				
<!-- Begin Page Content -->
                <div class="container-fluid">
                   <div> 
                    	<table border="1">
							<tr>
								<th>UserId</th>
								<th>FirstName</th>
								<th>Email</th>
							    <th>Password</th>
							    <th>Gender</th>
							    <th>Contact No</th>
								<th>RoleName</th>
								<th>Action</th>
							</tr>
					
							<c:forEach items="${users}" var="u">
								<tr>
									<td>${u.userId}</td>
									<td>${u.firstName}</td>
									<td>${u.email}</td>
									<td>${u.password}</td>
									<td>${u.gender }</td>
									<td>${u.contactNo }</td>
									<td>${u.roleName}</td>
									<td><a href="edituser/${u.userId}">Edit</a></td>
								</tr>
							</c:forEach>
                   </div>
                    
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