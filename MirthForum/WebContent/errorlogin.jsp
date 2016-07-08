<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Error</title>
</head>
<body>
		<p style="color: white">
	* Invalid Credentials *
		</p>
	<%

	getServletContext().getRequestDispatcher("/login.jsp").include(
			request, response);
	%>
</body>
</html>