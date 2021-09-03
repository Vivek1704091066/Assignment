<%@ page import="java.sql.*" %>
<%
String password = (String)session.getAttribute("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
try(
	//Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost/","root",password);
	Statement st1 = cn1.createStatement();){
	String sql1 = "create database seller";
	st1.executeUpdate(sql1);
}catch(Exception ex){}

try(
		//Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost/","root",password);
		Statement st2 = cn2.createStatement();){
		String sql2 = "create database costumer";
		st2.executeUpdate(sql2);
	}catch(Exception ex){}
%>

 <head>
  <link href = "CSS/style.css" rel="stylesheet">
  <style>
   .tab{
	margin-left:auto; margin-top:150px; border-radius:5px;
	padding:25px 25px 25px 25px; }
  </style>
 </head>
 
<body background='image/image9.jpg'>
 <table align='center' class='tab'>
  <tr><td><a class='lis' href='sellerlogin.jsp'>Book Selling</a></td>
  <td><a class='lis' href='costumerlogin.jsp'>Book Purchasing</a></td></tr>
 </table>
</body>