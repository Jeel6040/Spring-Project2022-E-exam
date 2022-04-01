<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
</head>
<body>
	<form action="updateuser" method="post" >
		<input type="hidden" value="${user.userId}" name="userId"/>
		
		FirstName : <input type="text" name="firstName" value="${user.firstName }"/><br><br>
		LastName : <input type="text" name="lastName" value="${user.lastName }"/><br><br>
		Email : <input type="email" name="email" value="${user.email }"/><br><br>
		ContactNo : <input type="number" name="contactNo" value="${user.contactNo }"/><br><br>
		Gender : <input type="text" name="gender" value="${user.gender }"/><br><br>
		
		<input type="submit" value="Update User"/>
	</form>
</body>
</html>