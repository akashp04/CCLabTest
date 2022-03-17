<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	.wvd, .lgt, .idt {
		cursor: pointer;
	}
	 .idt {
	 	margin-left: 450px;
	 	margin-top:20px;
	 }
	.wvd{
		margin-left: 500px;
		margin-top: 20px;
	}
	.lgt {
		margin-left:500px;
		margin-top: 10px;
	}
</style>
<title>Welcome Page</title>
</head>
<body>
	
	<%
		response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		
		if(session.getAttribute("username") == null)
			response.sendRedirect("Login.jsp");
	%>
	
	<h1>Welcome to Testing Servlet, Mr. ${username}</h1>
	
	<p> 
		To see the Reports of employee, Click the Report button
	</p>
	<form action="Report">
		<input type="text" name="id" class="idt"><br>
	
		<input type="submit" value="Report" class="wvd">
	</form>	
	<form action="Logout">
		<input type="submit" value="Logout" class="lgt">
	</form>
	
</body>
</html>