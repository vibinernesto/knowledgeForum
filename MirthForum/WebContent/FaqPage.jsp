
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	String questionHeader= request.getParameter("questionHeader");
  //  System.out.println("QuestionHeader : "+questionHeader);
    String completeQuestion = request.getParameter("completeQuestion");
    String pName = request.getParameter("postingName");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
    Statement stat = connection.createStatement();
    Statement stat2 = connection.createStatement();
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ceslogin", "root", "");
    stat = connection.createStatement();
    stat2 = connection.createStatement();
    String updateQuestion = "insert into faq (Header,Question,PostingName) values ('"+questionHeader+"','"+completeQuestion+"','"+pName+"')";
    //String updateQuestion = "insert into faq (Header,Question,PostingName) values (?,?,?)";
    int sigin= stat.executeUpdate(updateQuestion);
    //String healthUpdate = "insert into healthfaq (Header,Question,PostingName) values ('"+questionHeader+"','"+completeQuestion+"','"+pName+"')";
    //int insertHealth= stat2.executeUpdate(healthUpdate);
%>
<%
    response.sendRedirect("faqpageValidate.jsp");
%>