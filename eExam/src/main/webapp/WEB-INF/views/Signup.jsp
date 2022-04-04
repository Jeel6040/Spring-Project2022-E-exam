<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>
	<form action="saveuser" method="post" >
		
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
		ConfirmPassword : <input type="password" name="confirmPassword"><br><br>
		Role : <select name="roleId">
					<option>---Select Role---</option>
					  
					<c:forEach items="${role}" var="r">
						<option value="${r.roleId}">${r.roleName}</option>
					</c:forEach>
				</select><br><br>
				<input type="submit" value="Add User"/>
	</form>
</body>
</html>