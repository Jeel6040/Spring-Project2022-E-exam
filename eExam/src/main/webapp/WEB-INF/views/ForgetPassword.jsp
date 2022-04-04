<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
</head>
<body>
	<form action="forgetpassword" method="post">
		<div>
			Enter Your Email : <input type="email" name="email" required/><br><br>
			
			<button type="submit">Reset Password</button>
		</div>
		<div>
			<a href="login">Back to Login.</a>
		</div>
	</form>
</body>
</html>