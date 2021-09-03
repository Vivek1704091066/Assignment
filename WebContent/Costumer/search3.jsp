<%@ include file="sellerconnection.jsp"%>
<form>
<% String uid = request.getParameter("button");
try{
String bookname = (String)session.getAttribute("bookname");
String writername = (String)session.getAttribute("writername");
session.setAttribute("seuid7",uid);

	 String query = "update "+uid+" set number=number-1 where book=? and writer=?";
	 PreparedStatement ps = cn1.prepareStatement(query);
	 ps.setString(1,bookname);
	 ps.setString(2,writername);
	 ps.executeUpdate();
	 response.sendRedirect("search5.jsp");
}	catch(Exception ex){out.print(ex);}

	%>
</form>
	 