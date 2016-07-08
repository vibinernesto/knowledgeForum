<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="commonpagecss.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
    function x()
    {
    	var get = document.getElementById("ans");
        alert(get.value);
    }
    </script>
</head>
<body>
	<div id="pageHeader">CES Healthcare Encyclopedia</div>
	<!-- <div id="navRegistration">
	</div> -->
	<ul>	
	<b><li><a href="faqpageValidate.jsp">Main Page</a></li></b>
	<b><li><a href="faqpageValidate2.jsp">Healthcare FAQ</a></li></b>
	<b><li><a href="fetchDataPages/cloudRelatedFetch.jsp">Cloud FAQ</a></li></b>
	<b><li><a href="firstpagestyle.jsp"><img src="img/log2.png" width="30" height="18"></a></li></b>
	</ul>
	<div id="section">
		<h3>
		<center><font color="#00467E">FIND YOUR KNOWLEDGE HERE </font></center>
		</h3>
		
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
Statement statement = conn.createStatement();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
statement = conn.createStatement();
String fetchQuestion = "select * from faq";
ResultSet resultset;
resultset = statement.executeQuery(fetchQuestion);
while(resultset.next())
{
	String queryHeader = resultset.getString("Header");
	String queryDetail = resultset.getString("Question");
	String postName = resultset.getString("postingName");
%>
<div id="questionTitle">
	<br>
<font color="#008CBA"><b>POSTED BY : <font color="#D38D1C"><%out.println(postName);%> </b></font>
<br>
	<br>
	<b><font color="#008CBA">
	<%
    out.println(queryHeader);
    %></font></b>
</div>
    <br>
 <div id="questionDetail">
 <font color="#6686C2">Answer : </font>
   <font color="#666666">
    <%
    out.println(queryDetail);
    %></font>
    <br>
    <br> 
    <br>
    <hr>
    <br>
     <%
}
%>
    <br>
    <br>
 </div>

	</div>
	<div id="footer">
		<footer>
			<address>
				&copy; Copyright 2015 All Rights Reserved <a
					href="http://www.vibinguvera.blogspot.in/">www.vibinguvera.com</a>
			</address>
		</footer>
	</div>
</body>
</html>