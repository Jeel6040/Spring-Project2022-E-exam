<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="login" method="post" >
		
		<div>
		Email : <input type="email" name="email" value="${user.email }"/><br><br>
		Password : <input type="password" name="password" value="${user.password }"/><br><br>
		
		<input type="submit" value="Login"/>
		</div>
		<div>
			<a href="forgetpassword" > Forgot Password?</a>
		</div>
		<div>
			Don't have an Account? <a href="signup" > Register Here</a>
		</div>
	</form>
</body>
</html>