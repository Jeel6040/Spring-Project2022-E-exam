<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Course</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<div id="wrapper">
<jsp:include page="AdminSideBar.jsp"></jsp:include>&nbsp;&nbsp;&nbsp;&nbsp;
               <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">


                   <jsp:include page="AdminHeader.jsp"></jsp:include>
 <form method="post" action="updatecourse">
                        <div class="row"><div class="col-md-6"><span id="message"></span><div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="row">
                                    <div class="col">
                                        <h6 class="m-0 font-weight-bold text-primary">Edit Course</h6>
                                    </div>
                                  
                                </div>
                            </div>
                                   <div class="modal-body">
      
       
        			<span id="form_message">
        			        <p style="color:red;">  ${error }</p>
        			</span>
        			<input type="hidden" name="courseId" value="${course.courseId }" />
		          	<div class="form-group">
		          		<label>Course Name</label>
		          		<input type="text" name="courseName" value="${course.courseName }"  class="form-control" />
		          	</div>
		          	<div class="form-group">
		          		<label>Description</label>
		          		<input type="text" name="description" value="${course.description }"  class="form-control" />
		          	</div>
		          	<div class="form-group">
		          		<label>Course Active</label>
		          		<select name="courseactive" id="courseactive" class="form-control" required>
		          		
		          		   <option value="1">Active</option>
		          		   <option value="0">InActive</option>
		          		</select>
		          		 
		          	</div>
		         
        		</div>
      
      <div class="modal-footer">
        <input type="submit" name="submit" id="submit" class="btn btn-success" value="Update Course" />
       <a href="listcourse"> <button type="button" class="btn btn-default">Close</button></a>
      </div>
    </div>
     </div>
     </div>
     </form> 
     </div>
     </div>
     </div>  
<jsp:include page="AllJs.jsp"></jsp:include> 
</body>
</html>