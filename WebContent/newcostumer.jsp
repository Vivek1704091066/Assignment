<%@ include file="connection.jsp"%>
<% 
String name = request.getParameter("cename");
String userid = request.getParameter("ceuid");
String password = request.getParameter("cepass");
try{
try{
 String query = "insert into costumer value(?,?,?)";
 PreparedStatement ps = cn2.prepareStatement(query);
 ps.setString(1,userid);
 ps.setString(2,password);
 ps.setString(3,name);
 ps.executeUpdate();
 session.setAttribute("ceuid",userid);
 session.setAttribute("cepass",password);
 session.setAttribute("cename",name);
 response.sendRedirect("Costumer/home.jsp");

}catch(Exception IntegrityConstraintViolationException){
	%>
	 <jsp:include page="costumersignup.jsp"/>
	 <div style=text-align:center>
	 <h1 style=color:black >Please select another User ID</h1>
	 </div>
	 <%
}}catch(Exception ex){out.print(ex);}
try{
	 Statement statement = cn2.createStatement();
	 String query2 = "create table "+userid+"(book varchar(30),writer varchar(30),number varchar(30), price varchar(30),name varchar(30))";
	 statement.executeUpdate(query2);
	 }catch(Exception ex){
	 }
%>