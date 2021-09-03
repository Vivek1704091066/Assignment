<%@ include file="connection.jsp"%>
<% 
String uid = request.getParameter("ceuid");
String pass = request.getParameter("cepass");
try{
 String query = "select * from costumer where uid=? and password=?";
 PreparedStatement ps = cn2.prepareStatement(query);
 ps.setString(1,uid);
 ps.setString(2,pass);
 ResultSet rst = ps.executeQuery();
 if(rst.next()){
	 response.sendRedirect("Costumer/home.jsp");
	 String userid = rst.getString(1);
	 String password = rst.getString(2);
	 String name = rst.getString(3);
	 session.setAttribute("ceuid",userid);
	 session.setAttribute("cepass",password);
	 session.setAttribute("cename",name);
 }
 else{
	 %>
	 <jsp:include page="costumerlogin.jsp"/>
	 <div style=text-align:center>
	 <h1 style=color:black >User ID or Password is incorrect</h1>
	 </div>
	 <%
 }
}catch(Exception ex){out.println(ex);}
try{
	 Statement statement = cn2.createStatement();
	 String query2 = "create table "+uid+"(book varchar(30),writer varchar(30),number varchar(30), price varchar(30),name varchar(30))";
	 statement.executeUpdate(query2);
	 }catch(Exception ex){
	 }
%>