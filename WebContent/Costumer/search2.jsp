<head>
 <style>
 .sfo {
	font-size:20px;
	padding:10px;
}
 </style>
</head>
<%@ include file="sellerconnection.jsp"%>
<%@ include file="search.jsp" %>
<% String query2 = "select * from seller";
   PreparedStatement ps2 = cn1.prepareStatement(query2);
   ResultSet rst2 = ps2.executeQuery();

	 while(rst2.next()){
	 String uid = rst2.getString(1);
	 String name2 = rst2.getString(3);
	 
	 
try{
 String bookn = request.getParameter("bname");
 String query = "select * from "+uid+" where book=?";
 PreparedStatement ps = cn1.prepareStatement(query);
 ps.setString(1,bookn);
 ResultSet rst = ps.executeQuery();
 %>
 <form action='search3.jsp' method='post'>
 <%
    while(rst.next()){ 
     %>
 <table class='ta' border='1'>
  <tr>
    <th class='sfo'>Book</th>
    <th class='sfo'>Writer</th>
    <th class='sfo'>Price</th></tr>
  <tr>
    <td class='sfo'><%=rst.getString(1) %></td>
    <td class='sfo'><%=rst.getString(2) %></td>
    <td class='sfo'><%=rst.getString(4) %></td>
    <%
    session.setAttribute("bookname", rst.getString(1));
    session.setAttribute("writername", rst.getString(2));
    if(rst.getInt(3)>0){ %>
    <td><button class='bt' name='button' value='<%=uid%>'>Buy</button></td></tr>
    <%}else{ %>
    <td class='sfo'>Out of Stock</td></tr>
    <%}%>
 <%} %>
  </table>
  </form>
 <%
}catch(Exception ex){
	 out.println(ex);
	 }}
 %>