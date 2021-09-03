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
<% 
try{
 String uid = (String)session.getAttribute("seuid");
 String bookn = request.getParameter("bname");
 String query = "select * from "+uid+" where book=?";
 PreparedStatement ps = cn.prepareStatement(query);
 ps.setString(1,bookn);
 ResultSet rst = ps.executeQuery();
 %>
 <table class='ta' border='1'>
  <tr>
    <th class='sfo'>Book</th>
    <th class='sfo'>Writer</th>
    <th class='sfo'>Quantity</th>
    <th class='sfo'>Price</th></tr>
  <tr>
  <% while(rst.next()){ %>
    <td class='sfo'><%=rst.getString(1) %></td>
    <td class='sfo'><%=rst.getString(2) %></td>
    <td class='sfo'><%=rst.getString(3) %></td>
    <td class='sfo'><%=rst.getString(4) %></td></tr>
 <%} %>
  </table>
 <%

 
}catch(Exception ex){
	 out.println(ex);
	 }
 %>