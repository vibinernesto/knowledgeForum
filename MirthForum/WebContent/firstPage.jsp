<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
try
{
String userid=request.getParameter("uname"); 
session.setAttribute("userId", userid);
String pw= request.getParameter("passwd");
String pwd= null;
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
Statement st = con.createStatement();
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
st = con.createStatement();
//-------------------TAG1--------------------
String query1 = "SELECT password FROM login WHERE username='" + userid
		+ "'";
ResultSet rs;
rs = st.executeQuery(query1);
if (rs.next()) {
	pwd = rs.getString(1);
}
if (!(pw.equals(pwd))) {
	response.sendRedirect("errorlogin.jsp");
}
}
catch(Exception e){       
    System.out.println("Something went wrong !! Please try again");  
}   
%>
<%@ include file ="firstpagestyle.jsp" %>