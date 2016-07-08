<html>
<head>
<link rel="stylesheet" type="text/css" href="firstpagestylecss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<script type="text/javascript">
</script>
</head>
<body>
	<div id="pageHeader">CES Encyclopedia</div>
	<%-- <div id="navRegistration">
		<br>
		<%@ page import="java.sql.*"%>
		<%@ page import="javax.sql.*"%>
		<%
         String userid = request.getParameter("uname");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
         Statement st = con.createStatement();
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
         st = con.createStatement();
         String query1 ="select * from signin where UserName = '"+ userid+"'";
         ResultSet rs;
         rs = st.executeQuery(query1);
         while(rs.next())
         {
       	 String name =rs.getString("UserName");
       	 int age = rs.getInt("Age");
       	 String project = rs.getString("Project");
         String designation = rs.getString("Designation");
       	 String skillset = rs.getString("SkillSet");
       	 Blob pic = rs.getBlob("photo");
       	 %>
		<center>
			<img src="img/che.png" width="150" height="150">
		</center>
		<br>
		<hr>
		<br> NAME :
		<%out.println(name);%><br>
		<br>
		<br> AGE :
		<%out.println(age);%><br>
		<br>
		<br> PROJECT :
		<%out.println(project);%><br>
		<br>
		<br> DESIGNATION :
		<%out.println(designation);%><br>
		<br>
		<br> SKILL SET :
		<%out.println(skillset);%><br>
		<br>
		<br>
		<%
           }
         %>
	</div> --%>


<!--  TEST CODE MENU  -->


     
<!--  END TEST CODE -->



	<ul class="nav nav-tabs1">
	<li class="active">
	<li><a data-toggle="tab" href="#home">Healthcare</a></li>
    <li><a data-toggle="tab" href="#cloud">Cloud</a></li>
    <li><a data-toggle="tab" href="#dotnet">.Net</a></li>
    <li><a data-toggle="tab" href="#SQL">SQL</a></li>
    <li><a data-toggle="tab" href="#">SQL</a></li>
    <li><a href="faqpageValidate.jsp">Dashboard</a></li>
    <li><a href="login.jsp"><img src="img/log2.png" width="30" height="18"></a></li>
  </ul>
	
	<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
	<div id="section1">
		<h3>
			<font color="#00467E">Healthcare Information</font>
		</h3>
		<br>
		<form action="FaqPage.jsp">
			QUESTION ? <br><br>
			<input type="text" name="questionHeader" size="50" required><br><br>
			ANSWER AND EXPLANATION : <br>
			<br> <textarea rows="7" cols="90" name="completeQuestion"></textarea><br>
			<br>
			POSTING NAME : <input type="text" size="20" name="postingName" required> 
			<br>
			<br> <input type="submit" value="submit" >
		</form> 
		</div>
	</div>
	<div id="cloud" class="tab-pane fade">	
		<div id="section1">
		<h3>
			 <font color="#00467E">Cloud Information</font>
		</h3>
		<br>
		<form action="insertDataPages/CloudRelatedQuestions.jsp">
			QUESTION ? <br><br>
			<input type="text" name="questionHeader" size="50" required><br><br>
			ANSWER AND EXPLANATION : <br>
			<br> <textarea rows="7" cols="90" name="completeQuestion"></textarea><br>
			<br>
			POSTING NAME : <input type="text" size="20" name="postingName" required> 
			<br>
			<br> <input type="submit" value="submit" >
		</form> 
	</div>
	</div>
	<div id="dotnet" class="tab-pane fade">	
		<div id="section1">
		<h3>
			 <font color="#00467E">.Net Information</font>
		</h3>
		<br>
		<form action="FaqPage.jsp">
			QUESTION ? <br><br>
			<input type="text" name="questionHeader" size="50" required><br><br>
			ANSWER AND EXPLANATION : <br>
			<br> <textarea rows="7" cols="90" name="completeQuestion"></textarea><br>
			<br>
			POSTING NAME : <input type="text" size="20" name="postingName" required> 
			<br>
			<br> <input type="submit" value="submit" >
		</form> 
	</div>
	</div>
	
	<div id="SQL" class="tab-pane fade">	
		<div id="section1">
		<h3>
			 <font color="#00467E">SQL Information</font>
		</h3>
		<br>
		<form action="FaqPage.jsp">
			QUESTION ? <br><br>
			<input type="text" name="questionHeader" size="50" required><br><br>
			ANSWER AND EXPLANATION : <br>
			<br> <textarea rows="7" cols="90" name="completeQuestion"></textarea><br>
			<br>
			POSTING NAME : <input type="text" size="20" name="postingName" required> 
			<br>
			<br> <input type="submit" value="submit" >
		</form> 
	</div>
	</div>
	
	<div id="SQL" class="tab-pane fade">	
		<div id="section1">
		
		<h3>
			 <font color="#00467E">JAVA Information</font>
		</h3>
		<br>
		<form action="FaqPage.jsp">
			QUESTION ? <br><br>
			<input type="text" name="questionHeader" size="50" required><br><br>
			ANSWER AND EXPLANATION : <br>
			<br> <textarea rows="7" cols="90" name="completeQuestion"></textarea><br>
			<br>
			POSTING NAME : <input type="text" size="20" name="postingName" required> 
			<br>
			<br> <input type="submit" value="submit" >
		</form> 
	</div>
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

