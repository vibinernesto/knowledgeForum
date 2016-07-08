<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String signName= request.getParameter("sUname");
String signPasswd = request.getParameter("sPasswd");
String signAge = request.getParameter("sAge");
String signProject = request.getParameter("sProject");
String signDesignation = request.getParameter("sDesignation");
String signSkillSet = request.getParameter("sSkillset");
String signPhoto = request.getParameter("sPhoto");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
Statement st = con.createStatement();
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
st = con.createStatement();

String query1 = "insert into signin (UserName,Password,Age,Project,Designation,SkillSet,Photo) values ('"+signName+"','"+signPasswd+"','"+signAge+"','"+signProject+"','"+signDesignation+"','"+signSkillSet+"','"+signPhoto+"')";
String query2 = "insert into login (username,password) values ('"+signName+"','"+signPasswd+"')";
int sigin= st.executeUpdate(query1);
int login= st.executeUpdate(query2);
%> 
<%@ include file ="login.jsp" %>

