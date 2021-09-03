<%@ page import="java.sql.*"%>
<% 
 Connection cn1=null;
 Connection cn2=null;
 try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 cn1=DriverManager.getConnection("jdbc:mysql://localhost/seller","root","@MYSQL");
	 cn2=DriverManager.getConnection("jdbc:mysql://localhost/costumer","root","@MYSQL");
 }
 catch(Exception ex){
	 out.println(ex);
	 }
 %>