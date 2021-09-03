<%@ include file="connection.jsp"%>
<% 
try{
	
 String uid = request.getParameter("seuid");
 String pass = request.getParameter("sepass");
 String query = "select * from seller where uid=? and password=?";
 PreparedStatement ps = cn1.prepareStatement(query);
 ps.setString(1,uid);
 ps.setString(2,pass);
 ResultSet rst = ps.executeQuery();
 if(rst.next()){
	 response.sendRedirect("Seller/home.jsp");
	 String userid = rst.getString(1);
	 String password = rst.getString(2);
	 String name = rst.getString(3);
	 session.setAttribute("seuid",userid);
	 session.setAttribute("sepass",password);
	 session.setAttribute("sename",name);
 }
 else{
	 %>
	 <jsp:include page="sellerlogin.jsp"/>
	 <div style=text-align:center>
	 <h1 style=color:black >User ID or Password is incorrect</h1>
	 </div>
	 <%
 }
}catch(Exception ex){out.println(ex);}
try{
	 String uid = (String)session.getAttribute("seuid");
	 Statement statement = cn1.createStatement();
	 String query2 = "create table "+uid+"(book varchar(30),writer varchar(30),number varchar(30), price varchar(30))";
	 statement.executeUpdate(query2);
	 }catch(Exception SyntaxErrorException){
	 }
try{
	 String uid = (String)session.getAttribute("seuid");
	 Statement statement = cn1.createStatement();
	 String query2 = "create table "+uid+"sale(book varchar(30),writer varchar(30),number varchar(30), price varchar(30),name varchar(30))";
	 statement.executeUpdate(query2);
	 }catch(Exception ex){
	 }
%>