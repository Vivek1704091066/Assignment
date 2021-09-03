<%@ include file="costumerconnection.jsp"%>
<% 
String bookname = (String)session.getAttribute("bookname7");
String writername = (String)session.getAttribute("writername7");
String uid = (String)session.getAttribute("ceuid");
String name2 = (String)session.getAttribute("name7");
String bookprice = (String)session.getAttribute("bookprice7"); 
try{
	String query2 = "insert into "+uid+" value(?,?,?,?,?)";
	PreparedStatement ps2 = cn.prepareStatement(query2);
	ps2.setString(1,bookname);
	ps2.setString(2,writername);
	ps2.setString(3,"1");
	ps2.setString(4,bookprice);
	ps2.setString(5,name2);
	ps2.executeUpdate();
	response.sendRedirect("search.jsp");
}catch(Exception ex){out.print(ex);}
%>
<%@ include file="sellerconnection.jsp"%>
<%
try{
 String uid2 = (String)session.getAttribute("seuid7");
 String name = (String)session.getAttribute("cename");
 String query = "insert into "+uid2+"sale value(?,?,?,?,?)";
 PreparedStatement ps = cn1.prepareStatement(query);
 ps.setString(1, bookname);
 ps.setString(2, writername);
 ps.setString(3, "1");
 ps.setString(4, bookprice);
 ps.setString(5, name);
 ps.executeUpdate();
}catch(Exception ex){out.print(ex);}
 %>