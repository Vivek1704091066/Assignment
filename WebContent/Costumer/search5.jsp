<%@ include file="sellerconnection.jsp"%>
<% String uid = (String)session.getAttribute("seuid7");
String book = (String)session.getAttribute("bookname");
String writer = (String)session.getAttribute("writername");
try{
	String query ="select * from "+uid+" where book=?";
	PreparedStatement ps = cn1.prepareStatement(query);
	ps.setString(1,book);
	
	ResultSet rst = ps.executeQuery();
	while(rst.next()){
	session.setAttribute("bookname7",rst.getString(1));
	session.setAttribute("writername7",rst.getString(2));
	session.setAttribute("bookprice7",rst.getString(4));
	}
	response.sendRedirect("search6.jsp");
	
}catch(Exception ex){out.print(ex);}

	%>