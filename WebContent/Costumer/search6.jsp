<%@ include file="sellerconnection.jsp"%>
<%
String uid = (String)session.getAttribute("seuid7");
try{
		String query2 ="select * from seller where uid=?";
		PreparedStatement ps2 = cn1.prepareStatement(query2);
		ps2.setString(1,uid);
		ResultSet rst2 = ps2.executeQuery();
		while(rst2.next()){
		
		session.setAttribute("name7",rst2.getString(3));
		}
		response.sendRedirect("search4.jsp");
}catch(Exception ex){out.print(ex);}
%>