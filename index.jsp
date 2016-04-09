<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h1>Sign-In</h1>
	
	<form name="loginForm" action="loginServlet" method="post">
		<input type="text" name="username" maxlength="12" required>
		<input type="password" name="password" maxlength="10" required>
		<input type="submit" name="submit">
	</form>
</body>
</html>