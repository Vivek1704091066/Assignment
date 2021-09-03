<head>
 <style>
 .sfo {font-size:20px;padding:10px;}
.sfop {color:white;font-size:20px;padding:10px;}
.ts{background-color:black;	}
 </style>
</head>
<%@ include file="costumerconnection.jsp"%>
<%@ include file="menu.jsp" %>
<% 
try{
 String uid = (String)session.getAttribute("ceuid");
 String query = "select * from "+uid;
 PreparedStatement ps = cn.prepareStatement(query);
 ResultSet rst = ps.executeQuery();
 %>
 <h1 align='center'>My Book</h2>
 <table class='ta' border='2'>
  <tr class='ts'>
    <th class='sfop'>Book</th>
    <th class='sfop'>Writer</th>
    <th class='sfop'>Quantity</th>
    </tr>
    <% 
  while(rst.next()){ 
 %>
  <tr><td class='fo'><%=rst.getString(1) %></td>
    <td class='sfo'><%=rst.getString(2) %></td>
    <td class='sfo'><%=rst.getString(3) %></td></tr>
 <%
 }

 %> </table> <%
 
}catch(Exception ex){
	 out.println(ex);
	 }
 %>