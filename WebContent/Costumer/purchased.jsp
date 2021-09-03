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
String uid = (String)session.getAttribute("ceuid");
try{
	String query2 = "select * from "+uid;
	PreparedStatement ps2 = cn.prepareStatement(query2);
	ResultSet rst = ps2.executeQuery();
	%>
 <h1 align='center'>Purchased Book</h2>
 <table class='ta' border='2'>
  <tr class='ts'>
    <th class='sfop'>Book</th>
    <th class='sfop'>Writer</th>
    <th class='sfop'>Quantity</th>
    <th class='sfop'>Price</th>
    <th class='sfop'>Seller</th>
    </tr>
    <% 
  while(rst.next()){ 
 %>
  <tr><td class='fo'><%=rst.getString(1) %></td>
    <td class='sfo'><%=rst.getString(2) %></td>
    <td class='sfo'><%=rst.getString(3) %></td>
    <td class='sfo'><%=rst.getString(4) %></td>
    <td class='sfo'><%=rst.getString(5) %></td></tr>
 <%
 }

 %> </table> <%

}catch(Exception ex){out.print(ex);}
%>