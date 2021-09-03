<%@ include file="connection.jsp"%>
<% 
String name = request.getParameter("sename");
String userid = request.getParameter("seuid");
String password = request.getParameter("sepass");
try{
try{
 String query = "insert into seller value(?,?,?)";
 PreparedStatement ps = cn1.prepareStatement(query);
 ps.setString(1,userid);
 ps.setString(2,password);
 ps.setString(3,name);
 ps.executeUpdate();

 session.setAttribute("seuid",userid);
 session.setAttribute("sepass",password);
 session.setAttribute("sename",name);
 response.sendRedirect("Seller/home.jsp");
 
 Statement statement = cn1.createStatement();
 String query2 = "create table "+userid+"(book varchar(30),writer varchar(30),number varchar(30), price varchar(30))";
 statement.executeUpdate(query2);
}catch(Exception IntegrityConstraintViolationException){
	%>
	 <jsp:include page="sellersignup.jsp"/>
	 <div style=text-align:center>
	 <h1 style=color:black >Please select another User ID</h1>
	 </div>
	 <%
}}catch(Exception ex){out.print(ex);}
try{
	 String uid = (String)session.getAttribute("seuid");
	 Statement statement = cn1.createStatement();
	 String query2 = "create table "+uid+"sale(book varchar(30),writer varchar(30),number varchar(30), price varchar(30),name varchar(30))";
	 statement.executeUpdate(query2);
	 }catch(Exception ex){
	 }
%>