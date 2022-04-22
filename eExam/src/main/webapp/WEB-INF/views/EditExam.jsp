<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Exam</title>
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
 <form method="post" action="updateexam">
                        <div class="row"><div class="col-md-6"><span id="message"></span><div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="row">
                                    <div class="col">
                                        <h6 class="m-0 font-weight-bold text-primary">Edit Exam</h6>
                                    </div>
                                  
                                </div>
                            </div>
                                   <div class="modal-body">
      
       
        			<span id="form_message">
        			        <p style="color:red;">  ${error }</p>
        			</span>
        			<input type="hidden" name="examId" value="${exam.examId }" />
		          	<div class="form-group">
		          		<label>Exam Name</label>
		          		<input type="text" name="examName" value="${exam.examName }"  class="form-control" />
		          	</div>
		          	<div class="form-group">
		          		<label>Description</label>
		          		<input type="text" name="description" value="${exam.description }"  class="form-control" />
		          	</div>
		          	<div class="form-group">
		          		<label>MarksPerQuestion</label>
		          		<input type="number" name="marksPerQuestion" value="${exam.marksPerQuestion }"  class="form-control" />
		          	</div>
		          	<div class="form-group">
		          		<label>TotalNumOfQuestions</label>
		          		<input type="number" name="totalNumOfQuestion" value="${exam.totalNumOfQuestions }"  class="form-control" />
		          	</div>
                   
		          	<div class="form-group" id="ifedit">
		          	<label>Exam Status <span class="text-danger">*</span></label>
		          	<select name="statusId" id="statusId" class="form-control">
		          	<option value="choose" selected disabled hidden="choose">Choose Here</option>
		          	<option value="1">Active</option>
		          	<option value="0">InActive</option>
		          	</select>
		          	<span class="text-muted"><small>If you have select Active status, then Student will able to view Exam details in their dashboard &amp; you will not able to edit or delete this exam data.</small>
		          	</span>
		          	</div>
		         
        		</div>
      
      <div class="modal-footer">
        <input type="submit" name="submit" id="submit" class="btn btn-success" value="Update Exam" />
       <a href="listexams"> <button type="button" class="btn btn-default">Close</button></a>
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